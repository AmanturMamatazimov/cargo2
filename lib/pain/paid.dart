import 'package:flutter/material.dart';

class Paid extends StatefulWidget {
  const Paid({Key? key}) : super(key: key);

  @override
  State<Paid> createState() => _PaidState();
}

class _PaidState extends State<Paid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Оплачено'),
      ),
    );
  }
}
