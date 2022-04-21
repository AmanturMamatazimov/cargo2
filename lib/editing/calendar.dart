import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
 late DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget> [
          Text(_dateTime == null ? 'Nothing has been '  : _dateTime.toString()),
          RaisedButton(
            child: Text('Pick a date'),
              onPressed: (){
               showDatePicker(
                   context: context,
                   initialDate: DateTime.now(),
                   firstDate:DateTime (2001),
                   lastDate: DateTime(2022)
               ).then((date) {
                setState(() {
                  _dateTime = date!;
                });
               });
          }),

        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
