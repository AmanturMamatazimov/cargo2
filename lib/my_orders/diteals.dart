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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 32),
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
              )
            ],
          ),

        ),
      ),
    );
  }
}
