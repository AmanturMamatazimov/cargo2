
import 'package:cargo_app/main/home.dart';
import 'package:cargo_app/main/my_orders.dart';
import 'package:cargo_app/main/sppage.dart';
import 'package:cargo_app/menu/about_company.dart';
import 'package:cargo_app/menu/exit.dart';
import 'package:cargo_app/menu/guation_answer.dart';
import 'package:cargo_app/menu/my_profil.dart';
import 'package:cargo_app/menu/safity.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                Container(
                  width: 80.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/marina.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(width: 8.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Марина Иванова',style: AppTextStyles.black16SemiBold),
                    SizedBox(height: 8.h),
                    Text('+996 705 779 778',style: AppTextStyles.black12Medium,)
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProfile(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                   Icon(Icons.person_outline,color: Colors.blue),
                    SizedBox(width: 20.w),
                    Text('Мой профиль',style: AppTextStyles.profile)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Icon(Icons.search,color: Colors.blue),
                    SizedBox(width: 20.w),
                    Text('Отследить отправления',style: AppTextStyles.profile)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SPPage(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.blue,),
                    SizedBox(width: 20.w),
                    Text('Пункты Sapat Cargo',style: AppTextStyles.profile ,)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyOrders(),
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
                    Text('Мои заказы',style: AppTextStyles.profile ,)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuestionAnswer(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    // SvgPicture.asset(
                    //   'assets/icons/quest.svg',
                    //   color: Colors.blue,
                    // ),
                    Icon(Icons.question_mark_outlined,color: Colors.blue),
                    SizedBox(width: 20.w),
                    Text('Вопрос / Ответ',style: AppTextStyles.profile)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
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
                    Text('О компании',style: AppTextStyles.profile ,)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Safety(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    // SvgPicture.asset(
                    //   'assets/icons/key.svg',
                    //
                    // ),
                    Icon(Icons.shield_outlined,color: Colors.blue),
                    SizedBox(width: 20.w),
                    Text('Политика конфиденциальности',style: AppTextStyles.profile ,)
                  ],
                ),
              ),
            ),

            SizedBox(height: 6.h),
            GestureDetector(
              onTap: (){
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
                    Text('Выйти',style: AppTextStyles.profile ,)
                  ],
                ),
              ),
            ),

          ],
        ),
      ) ,
    );
  }
}
