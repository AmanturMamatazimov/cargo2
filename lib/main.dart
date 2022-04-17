import 'package:cargo_app/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'views/splash_page/splash_page.dart';

void main() {
  runApp(Cargo());
}

class Cargo extends StatelessWidget {
  const Cargo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_) {
          return MaterialApp(
            theme: AppTheme.themeData,
            debugShowCheckedModeBanner: false,
            home: SplashPage(),
          );
        });
  }
}
