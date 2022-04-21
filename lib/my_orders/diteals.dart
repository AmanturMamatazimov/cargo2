import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
        child: Container(
          width: 343,
          height: 525,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffF3F3F3)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 19, left: 17),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/build.svg',
                      color: Colors.blue,
                    ),
                    Text('23.03.22-25.03.22'),
                    SizedBox(width: 90,),
                    Text('№ ЛК-131',style: TextStyle(color: Colors.blue, fontSize: 16),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11,left: 16),
                child: Text('SU 601 Москва - Бишкек',style: TextStyle(fontSize: 16),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEAEAEA)
                      ),
                      child: Center(
                        child: Text(
                          'Данные заказа'
                        ),
                      ),
                    ),

                    Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff0E77EF)
                      ),
                      child: Center(
                        child: Text(
                            'Данные об активе'
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}
