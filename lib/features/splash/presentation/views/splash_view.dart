import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  static const String routeName = '/';
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
