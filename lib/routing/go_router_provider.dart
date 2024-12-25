
import 'package:go_router/go_router.dart';
import 'package:sole_mate/routing/route_error_screen.dart';
import 'package:sole_mate/screens/detail_page.dart';
import '../constants/app_routes.dart';
import '../screens/dashboard/dashboard_screen.dart';
import '../screens/splash_screen.dart';

GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
        name: AppRoutes.root,
        builder: (context, state) => const SplashScreen()),
    GoRoute(
      path: AppRoutes.dashboard,
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: AppRoutes.detailPage,
      builder: (context, state) => const DetailScreen(),
    ),
  ],
  errorBuilder: (context, state) => RouteErrorScreen(
    errorMsg: state.error.toString(),
  ),
);