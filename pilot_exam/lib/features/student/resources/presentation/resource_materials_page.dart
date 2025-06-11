import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../application/resource_notifier.dart';
import '../domain/entities/resource.dart';

class ResourceMaterialsPage extends ConsumerWidget {
  final String type;

  const ResourceMaterialsPage({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(resourceNotifierProvider);
    final resources = state.filteredResources;

    return Scaffold(
      backgroundColor: const Color(0xFF1E293B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E293B),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            ref.read(resourceNotifierProvider.notifier).clearFilters();
            Navigator.pop(context);
          },
        ),
        title: Text(
          _getTypeDisplayName(type),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: state.isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : state.error != null
              ? Center(
                  child: Text(
                    'Error: ${state.error}',
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              : resources.isEmpty
                  ? const Center(
                      child: Text(
                        'No resources available for this type',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: resources.length,
                      itemBuilder: (context, index) {
                        final resource = resources[index];
                        return _ResourceCard(resource: resource);
                      },
                    ),
    );
  }

  String _getTypeDisplayName(String type) {
    final displayNames = {
      'video': 'Video Tutorials',
      'audio': 'Audio Content',
      'document': 'Study Materials',
      'link': 'Useful Links',
    };

    return displayNames[type] ?? type;
  }
}

class _ResourceCard extends StatelessWidget {
  final Resource resource;

  const _ResourceCard({
    required this.resource,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      color: const Color(0xFF334155),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () => _launchURL(resource.externalUrl),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    _getTypeIcon(resource.type),
                    color: Colors.white,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      resource.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.open_in_new,
                    color: Colors.white70,
                    size: 20,
                  ),
                ],
              ),
              if (resource.description.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  resource.description,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _Chip(
                    label: resource.category.toUpperCase(),
                    color: _getCategoryColor(resource.category),
                  ),
                  ...resource.tags.map((tag) => _Chip(
                    label: tag,
                    color: Colors.blue.shade700,
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getTypeIcon(String type) {
    switch (type) {
      case 'video':
        return Icons.play_circle_outline;
      case 'audio':
        return Icons.headphones;
      case 'document':
        return Icons.description;
      case 'link':
        return Icons.link;
      default:
        return Icons.help_outline;
    }
  }

  Color _getCategoryColor(String category) {
    final colors = {
      'humanFactors': Colors.purple.shade700,
      'regulations': Colors.red.shade700,
      'meteorology': Colors.blue.shade700,
      'navigation': Colors.green.shade700,
      'aircraftSystems': Colors.orange.shade700,
      'flightTheory': Colors.teal.shade700,
      'interviewPrep': Colors.indigo.shade700,
      'ethiopianAirlines': Colors.amber.shade700,
    };

    return colors[category] ?? Colors.grey.shade700;
  }

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      debugPrint('Could not launch $url');
    }
  }
}

class _Chip extends StatelessWidget {
  final String label;
  final Color color;

  const _Chip({
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
} 