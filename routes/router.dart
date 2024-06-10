import 'package:fit_home_app/pages/activity_page/activity_page.dart';
import 'package:fit_home_app/pages/home_page/home_page.dart';
import 'package:fit_home_app/pages/profile_page/profile_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(title: 'Fit Home'),
    ),
    GoRoute(
      path: '/activity',
      builder: (context, state) => const ActivityPage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
    ),
  ],
);
