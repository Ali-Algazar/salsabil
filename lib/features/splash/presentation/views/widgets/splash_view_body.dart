import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/assets/images/app_images.dart';
import '../../../../../core/assets/svg/app_svg.dart';
import '../../../../home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, HomeView.routeName),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff396DB0),
          Color(0xff1C4C8B),
          Color(0xff071C37),
        ],
      )),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
              AppSvg.topSplash,
            ),
          ),
          Image.asset(
            height: 260.h,
            AppImages.logoSplash,
          ),
        ],
      ),
    );
  }
}
