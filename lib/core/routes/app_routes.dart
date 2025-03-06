import 'package:flutter/material.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  static Route<dynamic> Function(RouteSettings) onGenerateRoute = (settings) {
    switch (settings.name) {
      case SplashView.routeName:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashView();
          },
        );
      case HomeView.routeName:
        return MaterialPageRoute(
          builder: (context) {
            return const HomeView();
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('not fond'),
            ),
          ),
        );
    }
  };
}
