import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';
import '../../homepage/presentation/home_page.dart';
import '../application/resource_notifier.dart';
import 'resource_materials_page.dart';

class ResourcePage extends ConsumerStatefulWidget {
  const ResourcePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ResourcePage> createState() => _ResourcePageState();
}

class _ResourcePageState extends ConsumerState<ResourcePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(resourceNotifierProvider.notifier).getAllResources());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(resourceNotifierProvider);
    final types = state.availableTypes;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF375569),
        automaticallyImplyLeading: false,
        title: const Text(
          'Resources',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () {
              ref.read(resourceNotifierProvider.notifier).getAllResources();
            },
          ),
        ],
      ),
      body: state.isLoading
          ? const Scaffold(
              backgroundColor: Color(0xFF375569),
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            )
          : state.error != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Error: ${state.error}',
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          ref.read(resourceNotifierProvider.notifier).getAllResources();
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                )
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      // Top image
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/resource.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Grid of resource type cards
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 1.1,
                        ),
                        itemCount: types.length,
                        itemBuilder: (context, index) {
                          final type = types[index];
                          return _TypeCard(
                            title: _getTypeDisplayName(type),
                            subtitle: _getTypeDescription(type),
                            icon: _getTypeIcon(type),
                            onTap: () => _navigateToMaterials(type),
                          );
                        },
                      ),
                    ],
                  ),
                ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: 4,
        onTap: (index) {
          if (index == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
          }
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

  String _getTypeDescription(String type) {
    final descriptions = {
      'video': 'Watch instructional videos and demonstrations.',
      'audio': 'Listen to podcasts and audio lessons.',
      'document': 'Read books, PDFs, and study guides.',
      'link': 'Access helpful websites and online resources.',
    };

    return descriptions[type] ?? 'Resources of type $type.';
  }

  IconData _getTypeIcon(String type) {
    final icons = {
      'video': Icons.play_circle_outline,
      'audio': Icons.headphones,
      'document': Icons.description,
      'link': Icons.link,
    };

    return icons[type] ?? Icons.help_outline;
  }

  void _navigateToMaterials(String type) {
    ref.read(resourceNotifierProvider.notifier).setType(type);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResourceMaterialsPage(
          type: type,
        ),
      ),
    );
  }
}

class _TypeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback? onTap;

  const _TypeCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: const Color(0xFF375569),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 24,
                  ),
                  if (onTap != null)
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 20,
                    ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white70,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
} 