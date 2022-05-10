import 'package:cargo_app/styles/app_text_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 242.w,
          height: 150.h,
          padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [

              GestureDetector(
                  onTap: (){},
                  child: Text('Изменить фотографию',style: AppTextStyles.black14Regular)),
              SizedBox(height: 10.h),
              Divider(
                color: Colors.black,
                height: 1.h,
              ),
              SizedBox(height: 10.h),

              GestureDetector(
                  onTap: (){},
                  child: Text('Удалить фотографию', style: TextStyle(color: Colors.red))),
              SizedBox(height: 10.h),
              Divider(
                color: Colors.black,
                height: 1.h,
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                  onTap: (){},
                  child: Text('Отмена', style: AppTextStyles.black14Regular,))


            ],
          ),
        ),
      ),
    );
  }
}
