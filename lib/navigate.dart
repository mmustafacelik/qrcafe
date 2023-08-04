import 'package:go_router/go_router.dart';
import 'package:qrcafe/constants/analyticks.dart';
import 'package:qrcafe/main.dart';

enum AppRoute {
  home,
}

final goRouter = GoRouter(
  initialLocation: '/home_page',
  debugLogDiagnostics: true,
  observers: [Analyticks.observer],
  routes: [
    GoRoute(
      path: '/home_page',
      name: AppRoute.home.name,
      builder: (context, state) => MyHomePage(),
    ),
  ],
);
