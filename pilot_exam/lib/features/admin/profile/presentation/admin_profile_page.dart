import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../authentication/presentation/login_page.dart';
import '../../homepage/presentation/admin_home_page.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';
import '../../../authentication/application/auth_notifier.dart';
import '../../../student/user/application/user_notifier.dart';
import '../../../student/user/application/update_profile_notifier.dart';
import '../../exam/presentation/admin_mock_exams_page.dart';
import '../../interview/presentation/admin_interviews_page.dart';
import '../../progress/presentation/admin_track_progress_page.dart';
import '../../resources/presentation/admin_resource_page.dart';

class AdminProfilePage extends ConsumerStatefulWidget {
  const AdminProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<AdminProfilePage> createState() => _AdminProfilePageState();
}

class _AdminProfilePageState extends ConsumerState<AdminProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  
  bool _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    Future.microtask(() => ref.read(userNotifierProvider.notifier).getProfile());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showEditDialog(BuildContext context, String field, String currentValue) {
    final userState = ref.read(userNotifierProvider);
    final user = userState.user;
    if (user == null) return;

    _nameController.text = user.name;
    _emailController.text = user.email;
    _passwordController.text = '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit $field'),
        content: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (field == 'Full Name') TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Full Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                if (field == 'Email') TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                if (field == 'Password') StatefulBuilder(
                  builder: (context, setState) {
                    bool obscurePassword = true;
                    return StatefulBuilder(
                      builder: (context, setDialogState) {
                        return TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'New Password',
                            helperText: 'Leave empty to keep current password',
                            suffixIcon: IconButton(
                              icon: Icon(obscurePassword ? Icons.visibility_off : Icons.visibility),
                              onPressed: () {
                                setDialogState(() {
                                  obscurePassword = !obscurePassword;
                                });
                              },
                            ),
                          ),
                          obscureText: obscurePassword,
                          validator: (value) {
                            if (value != null && value.isNotEmpty && value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                Navigator.pop(context);
                await ref.read(updateProfileNotifierProvider.notifier).updateProfile(
                  userId: user.id,
                  name: _nameController.text,
                  email: _emailController.text,
                  password: _passwordController.text.isEmpty ? null : _passwordController.text,
                  roles: user.roles,
                );
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showTopSnackBar(BuildContext context, String message, {bool isError = false}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: isError ? Colors.red : Colors.green,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height - 100,
            left: 20,
            right: 20,
          ),
          duration: const Duration(seconds: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(userNotifierProvider);
    final updateState = ref.watch(updateProfileNotifierProvider);
    final Color headerColor = const Color(0xFF375569);
    final Color sectionColor = const Color(0xFF46647A);

    if (userState.isLoading) {
      return Scaffold(
        backgroundColor: headerColor,
        body: const Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      );
    }

    if (userState.error != null) {
      return Scaffold(
        backgroundColor: headerColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                userState.error!,
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.read(userNotifierProvider.notifier).getProfile();
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    final user = userState.user;

    if (updateState.isSuccess) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showTopSnackBar(context, 'Profile updated successfully');
        ref.read(updateProfileNotifierProvider.notifier).clearState();
        ref.read(userNotifierProvider.notifier).getProfile();
      });
    }

    if (updateState.error != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showTopSnackBar(
          context,
          updateState.error!,
          isError: true,
        );
        ref.read(updateProfileNotifierProvider.notifier).clearState();
      });
    }

    return Scaffold(
      backgroundColor: headerColor,
      appBar: AppBar(
        backgroundColor: headerColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const AdminHomePage()),
          ),
        ),
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: headerColor,
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Column(
              children: [
                const SizedBox(height: 16),
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 60, color: Color(0xFF375569)),
                ),
                const SizedBox(height: 12),
                Text(
                  user?.name ?? 'Loading...',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            height: 2,
            color: Colors.black.withOpacity(0.1),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: sectionColor,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _AdminProfileItem(
                      label: 'Full Name',
                      value: user?.name ?? '',
                      onEdit: () => _showEditDialog(context, 'Full Name', user?.name ?? ''),
                    ),
                    _AdminProfileItem(
                      label: 'Email',
                      value: user?.email ?? '',
                      onEdit: () => _showEditDialog(context, 'Email', user?.email ?? ''),
                    ),
                    _AdminProfileItem(
                      label: 'Password',
                      value: '••••••••',
                      onEdit: () => _showEditDialog(context, 'Password', ''),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      height: 2,
                      color: Colors.black.withOpacity(0.1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Support',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout, color: Colors.white, size: 28),
                      title: const Text(
                        'Log Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      onTap: () async {
                        await ref.read(authNotifierProvider.notifier).logout();
                        if (mounted) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => const LoginPage()),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
     bottomNavigationBar: AppBottomNav(
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const AdminHomePage()),
              );
              break;
            case 1:
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const AdminMockExamsPage()),
              );
              break;
            case 2:
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const AdminInterviewsPage()),
              );
              break;
            case 3:
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const AdminTrackProgressPage()),
              );
              break;
            case 4:
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const AdminResourcePage()),
              );
              break;
          }
        },
      ),
    );
  }
}

class _AdminProfileItem extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback onEdit;
  const _AdminProfileItem({
    required this.label,
    required this.value,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          TextButton.icon(
            onPressed: onEdit,
            icon: const Icon(Icons.edit, color: Colors.white, size: 18),
            label: const Text(
              'Edit',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
} 