import 'package:cargo_app/my_orders/my_orders.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_colors.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мои заказы'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(),
            Text(
              'У вас еще нет заказов',
              style: AppTextStyles.blackGrey16Regular,
            ),
            Image.asset(
              'assets/girl.png',
              width: 300.w,
              height: 300.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Myorder(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.mainColor),
                child: Center(
                  child: Text('Заказать', style: AppTextStyles.textbottom),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
