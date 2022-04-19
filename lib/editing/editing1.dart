import 'package:flutter/material.dart';

class Editing1 extends StatefulWidget {
  const Editing1({Key? key}) : super(key: key);

  @override
  State<Editing1> createState() => _Editing1State();
}

class _Editing1State extends State<Editing1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Редактирование'),
        ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
        child: Column(
          children: [
            Text('Имя'),
            Container(
              width: 343,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Color(0xffF3F3F3 )
              ),
            )
          ],

        ),
      )
    );
  }
}
