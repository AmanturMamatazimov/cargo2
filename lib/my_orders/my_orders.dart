import 'package:flutter/material.dart';

class Myorder extends StatefulWidget {
  const Myorder({Key? key}) : super(key: key);

  @override
  State<Myorder> createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Отследить заказ'),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  width: 343,
                  height: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF3F3F3)
                  ),
                  child: Column(
                    children: [


                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  width: 343,
                  height: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF3F3F3)
                  ),
                  child: Column(
                    children: [

                    ],
                  ),
                ),
                SizedBox(height: 16,),

                Container(
                  width: 343,
                  height: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF3F3F3)
                  ),
                  child: Column(
                    children: [

                    ],
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
