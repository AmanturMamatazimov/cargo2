import 'package:cargo_app/menu/about_company.dart';
import 'package:cargo_app/menu/exit.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'my_post.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 76, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                SizedBox(width: 8.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('User login', style: TextStyle(fontSize: 30.sp)),
                    SizedBox(height: 12.h),
                    Text('Почта', style: TextStyle(fontSize: 20.sp))
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyPost(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/send.svg',
                      color: Colors.blue,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'Мои публикации',
                      style: AppTextStyles.profile,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutCompany(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/alert.svg',
                      color: Colors.blue,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'О компании',
                      style: AppTextStyles.profile,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 6.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Exit(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/frame.svg',
                      color: Colors.blue,
                    ),
                    //   Icon(Icons.door_back_door_outlined,color: Colors.blue),
                    SizedBox(width: 20.w),
                    Text(
                      'Выйти',
                      style: AppTextStyles.profile,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
