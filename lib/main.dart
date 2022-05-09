import 'package:cargo_app/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'views/splash_page/splash_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';




void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: [
        ...DevicePreview.defaultTools,

      ],
      builder: (context) => const Cargo(),
    ),
  );
}

class Cargo extends StatelessWidget {
  const Cargo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 855),
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
