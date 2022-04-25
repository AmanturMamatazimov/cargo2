import 'package:cargo_app/my_orders/diteals.dart';
import 'package:cargo_app/styles/app_colors.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Myorder extends StatefulWidget {
  const Myorder({Key? key}) : super(key: key);

  @override
  State<Myorder> createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Отследить заказ'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 32),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Diteals(),
                    ),
                  );

                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.filColor
                  ),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/build.svg',
                                color: Colors.blue,
                                width: 22.w,
                                height: 18.h,
                              ),
                              SizedBox(width: 5.h),
                              Text('23.03.22-25.03.22',style: AppTextStyles.blackGrey10Regular),
                            ],
                          ),
                          Text('№ ЛК-131',style: AppTextStyles.blue16Medium),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Text('SU 601 Москва - Бишкек',style: AppTextStyles.black16Medium),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Сумма: 986р.',style: AppTextStyles.black12Regular),
                          GestureDetector(
                            onTap: (){},
                            child: Text('Подробнее...',style: AppTextStyles.blackGrey12Regular,),
                          )
                        ],
                      )



                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Diteals(),
                    ),
                  );

                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.filColor
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/build.svg',
                                color: Colors.blue,
                                width: 22.w,
                                height: 18.h,
                              ),
                              SizedBox(width: 5.h),
                              Text('23.03.22-25.03.22',style: AppTextStyles.blackGrey10Regular),
                            ],
                          ),
                          Text('№ ЛК-131',style: AppTextStyles.blue16Medium),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Text('SU 601 Москва - Бишкек',style: AppTextStyles.black16Medium),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Сумма: 986р.',style: AppTextStyles.black12Regular),
                          GestureDetector(
                            onTap: (){},
                            child: Text('Подробнее...',style: AppTextStyles.blackGrey12Regular,),
                          )
                        ],
                      )



                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Diteals(),
                    ),
                  );

                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.filColor
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/build.svg',
                                color: Colors.blue,
                                width: 22.w,
                                height: 18.h,
                              ),
                              SizedBox(width: 5.h),
                              Text('23.03.22-25.03.22',style: AppTextStyles.blackGrey10Regular),
                            ],
                          ),
                          Text('№ ЛК-131',style: AppTextStyles.blue16Medium),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Text('SU 601 Москва - Бишкек',style: AppTextStyles.black16Medium),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Сумма: 986р.',style: AppTextStyles.black12Regular),
                          GestureDetector(
                            onTap: (){},
                            child: Text('Подробнее...',style: AppTextStyles.blackGrey12Regular,),
                          )
                        ],
                      )



                    ],
                  ),
                ),
              ),

            ],
          )
      ),
    );
  }
}
