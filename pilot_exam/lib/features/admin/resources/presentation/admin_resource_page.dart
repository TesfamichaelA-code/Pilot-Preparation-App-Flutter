import 'package:flutter/material.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';
import 'admin_resource_add_page.dart';

class AdminResourcePage extends StatelessWidget {
  const AdminResourcePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF375569),
        automaticallyImplyLeading: false,
        title: const Text(
          'Resource',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // TODO: Implement search functionality
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/resource.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  _AdminResourceCard(
                    icon: Icons.book,
                    title: 'Study Materials',
                    subtitle: 'Books, articles, guides',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminResourceAddPage(),
                        ),
                      );
                    },
                  ),
                  _AdminResourceCard(
                    icon: Icons.play_circle,
                    title: 'Video Tutorials',
                    subtitle: 'Instructional Videos',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminResourceAddPage(),
                        ),
                      );
                    },
                  ),
                  _AdminResourceCard(
                    icon: Icons.language,
                    title: 'Websites',
                    subtitle: 'Helpful online resources',
                    onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminResourceAddPage(),
                        ),
                      );
                    },
                  ),
                  _AdminResourceCard(
                    icon: Icons.mic,
                    title: 'Podcasts',
                    subtitle: 'Audio learning content',
                    onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminResourceAddPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: 4, // Resource tab
        onTap: (index) {
          // TODO: Handle navigation
        },
      ),
    );
  }
}

class _AdminResourceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _AdminResourceCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 32,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
} 