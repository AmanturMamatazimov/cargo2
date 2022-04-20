import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Duty extends StatefulWidget {
  const Duty({Key? key}) : super(key: key);

  @override
  State<Duty> createState() => _DutyState();
}

class _DutyState extends State<Duty> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Долг',style: TextStyle(color: Colors.red
        ),),
      ),
      body: SingleChildScrollView(



         child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 32, left: 16, right: 16,bottom: 10 ),
            child: Column(
              children: [
                Column(
                   children: [
                    Container(
                    width: 163,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ),
                    child: Center(child: Text('40 000 руб',style: AppTextStyles.textbottom,)),
                  ),

                SizedBox(height: 11,),

                          Table(

                          border: TableBorder.all(color: Colors.blue),
                          columnWidths: {
                            0: FractionColumnWidth(0.4),

                          },
                          children: [
                            TableRow(children: [
                              Container(
                                width: 155,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                 child: Text('Дата Отправки'),
                                ),
                              ),
                              Container(
                                width: 155,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Text('Дата Отправки'),
                                ),
                              ),
                              Container(
                                width: 155,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Text('Дата Отправки'),
                                ),
                              ),
                              // Container(
                              //   width: 155,
                              //   height: 50,
                              //   decoration: BoxDecoration(
                              //       color: Colors.blue,
                              //       borderRadius: BorderRadius.circular(10)
                              //   ),
                              //   child: Center(
                              //     child: Text('Дата Отправки'),
                              //   ),
                              // )


                            ]),

                            buildRow(['Дата Отправки', 'Дата Получения', 'Рейс', ], isHeader: true),
                            buildRow(['24.02.22', '26.02.22', 'SU 123', ]),
                            buildRow(['24.02.22', '26.02.22', 'SU 123', ]),
                            buildRow(['24.02.22', '26.02.22', 'SU 123', ]),
                            buildRow(['24.02.22', '26.02.22', 'SU 123', ]),
                            buildRow(['24.02.22', '26.02.22', 'SU 123', ]),
                            buildRow(['24.02.22', '26.02.22', 'SU 123',]),
                            buildRow(['24.02.22', '26.02.22', 'SU 123', ]),
                            buildRow(['24.02.22', '26.02.22', 'SU 123', ]),
                            buildRow(['24.02.22', '26.02.22', 'SU 123',]),


                          ],
                  ),
                    ]
        ),
           ]
    )
      )
    )
    )
    );

  }
  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
children: cells.map((cell) {
  final style = TextStyle(
    fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
    fontSize: 18,
  );
  return Padding(padding: const EdgeInsets.all(12),
  child: Center(child: Text(cell, style: style,),),
  );
} ).toList()
  );
}
