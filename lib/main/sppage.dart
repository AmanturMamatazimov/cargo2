import 'package:flutter/material.dart';

class SPPage extends StatefulWidget {
  const SPPage({Key? key}) : super(key: key);

  @override
  State<SPPage> createState() => _SPPageState();
}

class _SPPageState extends State<SPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Main'),
      ),
    );
  }
}
