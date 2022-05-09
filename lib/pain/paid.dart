

import 'package:cargo_app/styles/app_colors.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class Paid extends StatefulWidget {
  const Paid({Key? key}) : super(key: key);

  @override
  State<Paid> createState() => _PaidState();
}

class _PaidState extends State<Paid> {


  Widget _matables (String name){
    return Container(
      width: 156,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.table,
        border: Border.all(color: Colors.black38),

      ),
      child: Center(
        child: Text(name),
      ),
    );
  }
  Widget _mytable(String name){
    return Container(
      width: 156,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white70),
          color: Colors.blue,
          borderRadius: BorderRadius.vertical( top: Radius.circular(10))
      ),
      child: Center(
        child: Text(name, style: TextStyle(color: Colors.white),),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Оплачено', style: TextStyle(color: Colors.green),),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 106, right: 106),
              child: Container(
                width: 163,
                height: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green
                ),
                child: Center(child: Text('50 000 руб',style: AppTextStyles.textbottom,)),
              ),
            ),
            SizedBox(height: 16,),
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
                              _mytable("Сумма")


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
