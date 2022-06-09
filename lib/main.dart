import 'package:cargo_app/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'views/splash_page/splash_page.dart';
import 'package:grock/grock.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async{
  await GetStorage.init();
  runApp(const ProviderScope(child: Cargo()));
}

class Cargo extends StatelessWidget {
  const Cargo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 855),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: AppTheme.themeData,
          debugShowCheckedModeBanner: false,
          navigatorKey: Grock.navigationKey,
          // scaffoldMessengerKey: Grock.snackbarMessengerKey,
          home: child,
        );
      },
      child: SplashPage(),
    );
  }
}
