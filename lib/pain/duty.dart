import 'package:cargo_app/styles/app_colors.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Duty extends StatefulWidget {
  const Duty({Key? key}) : super(key: key);

  @override
  State<Duty> createState() => _DutyState();
}

class _DutyState extends State<Duty> {


  Widget _matables (String name){
    return Container(
      width: 156.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.table,
        border: Border.all(color: Colors.black38),
      ),
      child: Center(
        child: Text(name,style: AppTextStyles.black18Medium),
      ),
    );
  }
  Widget _mytable(String name){
    return Container(
      width: 156.w,
      height: 50.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white70),
          color: Colors.blue,
          borderRadius: BorderRadius.vertical( top: Radius.circular(10))
      ),
      child: Center(
        child: Text(name,style: AppTextStyles.white16Medium),
      ),
    );
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Долг', style: TextStyle(color: Color(0xFFD31B1B),fontSize: 17.sp,fontWeight: FontWeight.w600),),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 15.w,top: 32.h,bottom: 32.h),
          children: <Widget>[
            Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 163.w,
                    height: 38.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD31B1B)
                    ),
                    child: Center(child: Text('40 000 руб',style: AppTextStyles.tablePay,)),
                  ),]
            ),
            SizedBox(height: 16.h),
            Table(
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              _mytable('Дата Отправки'),
                              _mytable('Дата Получения'),
                              _mytable("Рейс"),
                              _mytable("Сумма"),
                              SizedBox(width: 15.w)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('24.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('3 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('28.02.22'),
                              _matables('TK 428'),
                              _matables('6 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('8 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('8 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('8 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('8 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('8 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('8 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('8 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('8 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('8 000 руб'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _matables('26.02.22'),
                              _matables('26.02.22'),
                              _matables('SU 123'),
                              _matables('8 000 руб'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}