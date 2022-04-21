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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 70.h,),
              Text('У вас еще нет заказов'),
              SizedBox(height: 54.h,),
              Container(
                width: 300,
                height: 300,
                child:Image.asset('assets/girl.png'),
              ),
              SizedBox(height: 64.h,),
              GestureDetector(
                onTap: (){

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Myorder(),
                      )
                  );
                },
                child: Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.mainColor
                  ),
                  child: Center(
                    child: Text('Заказать',style: AppTextStyles. textbottom),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
