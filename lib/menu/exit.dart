import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:cargo_app/views/auth/sing_in/sing_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Exit extends StatefulWidget {
  const Exit({Key? key}) : super(key: key);

  @override
  State<Exit> createState() => _ExitState();
}

class _ExitState extends State<Exit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 242.w,
          height: 170.h,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Text('Выйти?', style: AppTextStyles.black18Medium),
              SizedBox(height: 10.h),
              GestureDetector(
                  onTap: () {},
                  child: Text('Выйти из учетной записи?',
                      style: AppTextStyles.black14Regular)),
              SizedBox(height: 10.h),
              Divider(
                color: Colors.black,
                height: 1.h,
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                  onTap: () async{
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.clear();
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text('Выйти', style: AppTextStyles.black14Regular)),
              SizedBox(height: 10.h),
              Divider(
                color: Colors.black,
                height: 1.h,
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Не выходить',
                    style: AppTextStyles.black14Regular,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
