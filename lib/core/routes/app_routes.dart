import 'package:flutter/material.dart';

import '../../features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  static Route<dynamic> Function(RouteSettings) onGenerateRoute = (settings) {
    switch (settings.name) {
      case SplashView.id:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashView();
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
