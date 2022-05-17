import 'package:cargo_app/styles/app_colors.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Diteals extends StatefulWidget {
  const Diteals({Key? key}) : super(key: key);

  @override
  State<Diteals> createState() => _DitealsState();
}

class _DitealsState extends State<Diteals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мои заказы'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 32.h),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffF3F3F3)
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
                        color: AppColors.mainColor,
                      ),
                      SizedBox(width: 5.w),
                      Text('23.03.22-25.03.22',style: AppTextStyles.blackGrey10Regular),
                    ],
                  ),
                  Text('№ ЛК-131',style: AppTextStyles.blue16Medium),
                ],
              ),
              SizedBox(height: 10.h),
              Text('SU 601 Москва - Бишкек',style: AppTextStyles.black16Medium),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEAEAEA)
                      ),
                      child: Center(
                        child: Text(
                          'Данные заказа',
                          style: AppTextStyles.black14Medium,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 31.w),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff0E77EF)
                      ),
                      child: Center(
                        child: Text(
                            'Данные об активе',
                          style: AppTextStyles.white14Medium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/frm1.svg',
                              color: AppColors.blue,
                            ),
                            SizedBox(width: 4.w),
                            Text('Сумма:',style: AppTextStyles.blackGrey12Regular),
                            SizedBox(width: 4.w),
                            Text('986 р.',style: AppTextStyles.black16Medium)
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/frm3.svg',
                              color: AppColors.blue,
                            ),
                            SizedBox(width: 4.w),
                            Text('Способ оплаты:',style: AppTextStyles.blackGrey12Regular),
                            SizedBox(width: 4.w),
                            Text('В долг', style: TextStyle(color: AppColors.mainRed,fontSize: 16.sp),)
                          ],
                        ),
                      ],
                    ),
                  SizedBox(height: 19.h),
                  Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/frm2.svg',
                              color: AppColors.blue,
                            ),
                            SizedBox(width: 4.w),
                            Text('Оплачено:', style: TextStyle(color: AppColors.green,fontSize: 12.sp),),
                            SizedBox(width: 4.w),
                            Text('400 р.',style: AppTextStyles.black16Regular)
                          ],
                        ),
                        SizedBox(width: 14.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/frm4.svg',
                              color: AppColors.blue,
                            ),
                            SizedBox(width: 4.w),
                            Text('Остаток:',style: TextStyle(color: AppColors.mainRed,fontSize: 12.sp),),
                            SizedBox(width: 4.w),
                            Text('586 р.',style: AppTextStyles.black16Regular),
                          ],
                        ),
                      ],
                    ),
                  SizedBox(height: 19.h),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/frm5.svg',
                        color: AppColors.blue,
                      ),
                      SizedBox(width: 4.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Дата отправления',style: AppTextStyles.blackGrey12Regular),
                          SizedBox(width: 4.w),
                          Text('22.04.22',style: AppTextStyles.black16Regular),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 19.h),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/frm6.svg',
                        color: AppColors.blue,
                      ),
                      SizedBox(width: 4.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Дата доставки',style: AppTextStyles.blackGrey12Regular),
                          Text('22.04.22',style: AppTextStyles.black16Regular)
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 19.h),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/frm7.svg',
                        color: AppColors.blue,
                      ),
                      SizedBox(width: 4.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Отправитель',style: AppTextStyles.blackGrey12Regular),
                          Text('Анна Смолинская',style: AppTextStyles.black16Regular),
                        ],
                      ),

                    ],
                  ),


                  SizedBox(height: 19.h),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/frm8.svg',
                        color: AppColors.blue,
                      ),
                      SizedBox(width: 4.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Получатель',style: AppTextStyles.blackGrey12Regular),
                          Text('Марина Ивановна',style: AppTextStyles.black16Regular),
                        ],
                      ),

                    ],
                  ),

                  SizedBox(height: 19.h),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/frm9.svg',
                        color: AppColors.blue,
                      ),
                      SizedBox(width: 4.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Откуда',style: AppTextStyles.blackGrey12Regular),
                          Text('Москва, ул Московская 120, кв 55',style: AppTextStyles.black16Regular),
                        ],
                      ),

                    ],
                  ),

                  SizedBox(height: 19.h),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/frm10.svg',
                        color: AppColors.blue,
                      ),
                      SizedBox(width: 4.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Куда',style: AppTextStyles.blackGrey12Regular),
                          Container(width:283.w,child: Text('Офис Sapat cargo, г.Бишкек, Токольдош...',style: AppTextStyles.black16Regular))
                        ],
                      ),

                    ],
                  ),

                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
