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
        title: Text('Долг'),
      ),
    );
  }
}
