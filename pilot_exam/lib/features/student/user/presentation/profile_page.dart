import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/widgets/app_bottom_nav.dart';
import '../../homepage/presentation/home_page.dart';
import '../../exams/presentation/exams_page.dart';
import '../../interviews/presentation/interview_page.dart';
import '../../progress/presentation/progress_page.dart';
import '../../resources/presentation/resource_page.dart';
import '../../../authentication/presentation/login_page.dart';
import '../application/user_notifier.dart';
import '../../../authentication/application/auth_notifier.dart';
import '../application/update_profile_notifier.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

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
      builder: (context) {
        bool obscurePassword = true;
        return StatefulBuilder(
          builder: (context, setState) => AlertDialog(
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
                    if (field == 'Password') ...[
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'New Password (Optional)',
                          helperText: 'Leave empty to keep current password',
                          suffixIcon: IconButton(
                            icon: Icon(obscurePassword ? Icons.visibility_off : Icons.visibility),
                            onPressed: () {
                              setState(() {
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
                      ),
                    ],
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
                    );
                  }
                },
                child: const Text('Save'),
              ),
            ],
          ),
        );
      },
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
    const Color headerColor = Color(0xFF375569);
    const Color sectionColor = Color(0xFF46647A);

    if (userState.isLoading) {
      return const Scaffold(
        backgroundColor: headerColor,
        body: Center(
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
            MaterialPageRoute(builder: (context) => const HomePage()),
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
                    _ProfileItem(
                      label: 'Full Name',
                      value: user?.name ?? '',
                      onEdit: () => _showEditDialog(context, 'Full Name', user?.name ?? ''),
                    ),
                    _ProfileItem(
                      label: 'Email',
                      value: user?.email ?? '',
                      onEdit: () => _showEditDialog(context, 'Email', user?.email ?? ''),
                    ),
                    _ProfileItem(
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
                        try {
                          await ref.read(authNotifierProvider.notifier).logout();
                          // Check for any errors after logout
                          final authState = ref.read(authNotifierProvider);
                          if (authState.error != null) {
                            if (mounted) {
                              _showTopSnackBar(
                                context,
                                authState.error!,
                                isError: true,
                              );
                            }
                            return;
                          }
                          if (mounted) {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => const LoginPage()),
                              (route) => false, // Remove all previous routes
                            );
                          }
                        } catch (e) {
                          if (mounted) {
                            _showTopSnackBar(
                              context,
                              'Failed to logout. Please try again.',
                              isError: true,
                            );
                          }
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
        currentIndex: 0, // Keep Home tab active when on profile page
        onTap: (index) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) {
              switch (index) {
                case 0:
                  return const HomePage();
                case 1:
                  return const ExamsPage();
                case 2:
                  return const InterviewPage();
                case 3:
                  return const ProgressPage();
                case 4:
                  return const ResourcePage();
                default:
                  return const HomePage();
              }
            }),
          );
        },
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback onEdit;
  const _ProfileItem({required this.label, required this.value, required this.onEdit});

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