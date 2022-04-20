import 'package:cargo_app/styles/app_text_styles.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Column(
            children: [
              Container(
                width: 163,
                height: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red
                ),
                child: Center(child: Text('40 000 руб',style: AppTextStyles.textbottom,)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
