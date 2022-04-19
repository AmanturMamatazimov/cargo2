
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        child: Padding(
          padding: const EdgeInsets.only(top: 76, left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [

                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/marina.png'),
                  ),
                  SizedBox(width: 8,),
                  Column(
                    children: const [
                      Text('Марина Иванова',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,)),
                      Text('+996 705 779 778')
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 343,
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.person_outline_sharp,size: 40,color: Colors.blue,),
                      Text('Мой профиль',style: AppTextStyles.profile ,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6.h,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 343,
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.person,size: 40,color: Colors.blue,),
                      Text('Отследить отправления',style: AppTextStyles.profile ,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6.h,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 343,
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.person,size: 40,color: Colors.blue,),
                      Text('Пункты Sapat Cargo',style: AppTextStyles.profile ,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6.h,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 343,
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.person,size: 40,color: Colors.blue,),
                      Text('Мои заказы',style: AppTextStyles.profile ,)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 6.h,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 343,
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.person,size: 40,color: Colors.blue,),
                      Text('Вопрос / Ответ',style: AppTextStyles.profile ,)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 6.h,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 343,
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.person,size: 40,color: Colors.blue,),
                      Text('О компании',style: AppTextStyles.profile ,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6.h,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 343,
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.person,size: 40,color: Colors.blue,),
                      Text('Политика конфиденциальности',style: AppTextStyles.profile ,)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 6.h,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 343,
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.person,size: 40,color: Colors.blue,),
                      Text('Выйти',style: AppTextStyles.profile ,)
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ) ,
    );
  }
}
