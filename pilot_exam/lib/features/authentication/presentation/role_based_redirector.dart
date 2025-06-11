import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../features/student/homepage/presentation/home_page.dart';
import '../../../features/admin/homepage/presentation/admin_home_page.dart';
import '../application/auth_notifier.dart';
import 'login_page.dart';

class RoleBasedRedirector extends ConsumerWidget {
  const RoleBasedRedirector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);

    if (!authState.isAuthenticated) {
      return const LoginPage();
    }

    // Check roles and redirect accordingly
    if (authState.roles.contains('admin')) {
      return const AdminHomePage();
    } else if (authState.roles.contains('student')) {
      return const HomePage();
    }

    // If no matching role, return to login
    return const LoginPage();
  }
} 