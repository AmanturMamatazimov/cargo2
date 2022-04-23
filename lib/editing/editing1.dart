import 'package:cargo_app/editing/calendar.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class Editing1 extends StatefulWidget {
  const Editing1({Key? key}) : super(key: key);

  @override
  State<Editing1> createState() => _Editing1State();
}

class _Editing1State extends State<Editing1> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /// Which holds the selected date
  /// Defaults to today's date.
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  late String valueChoose;
  List listItem = [
    'fsfdsfds', 'sdfsgfdgsfd','sfsf'
  ];

  String? selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();


  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Женский"),value: "Женский"),
      DropdownMenuItem(child: Text("Мужской"),value: "Мужской"),

    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32),
                Text('Имя'),
                Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffF3F3F3 )
                  ),
                  child: const TextField(
                    autofocus: false,
                    decoration:
                    InputDecoration(
                      hintText: "Марина",
                      // border: InputBorder.none,

                    ),

                  ),
                ),
                SizedBox(height: 15,),

                Text('Фамилия'),
                Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffF3F3F3 )
                  ),
                  child: const TextField(
                    autofocus: false,
                    decoration:
                    InputDecoration(
                      hintText: "Ивановна",
                      // border: InputBorder.none,

                    ),

                  ),
                ),
                SizedBox(height: 15,),

                Text('Номер телефона'),
                Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffF3F3F3 )
                  ),
                  child: const TextField(
                    autofocus: false,
                    decoration:
                    InputDecoration(
                      hintText: "+996 705 779 778",
                      // border: InputBorder.none,

                    ),

                  ),
                ),
                SizedBox(height: 15,),
                Text('Место проживания'),
                Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffF3F3F3 )
                  ),
                  child: const TextField(
                    autofocus: false,
                    decoration:
                    InputDecoration(
                      hintText: "Кыргызстан,Бишкек",
                      // border: InputBorder.none,

                    ),

                  ),
                ),




                SizedBox(height: 15,),







                Text('Дата рождения') ,




                    const SizedBox(
                      height: 10.0,
                    ),
                    GestureDetector(
                      onTap: () => _selectDate(context),
                      child: Container(
                        width: 343,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Color(0xffF3F3F3 )
                        ),
                        child: Center(
                          child: Text(
                            "${selectedDate.toLocal()}".split(' ')[0],
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )

                    ),






                const SizedBox(height: 15,),
                const Text('Пол'),

            Container(
              width: 343,
              height: 80,
              child: Form(
                  key: _dropdownFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButtonFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffF3F3F3 ), width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffF3F3F3 ), width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor:Color(0xffF3F3F3 ),
                          ),
                          validator: (value) => value == null ? "Select a country" : null,
                          dropdownColor: Color(0xffF3F3F3 ),
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: dropdownItems),
                    ],
                  )),
            ),


                SizedBox(height: 15,),
                GestureDetector(
                  onTap: (){

                  },

                  child: Container(
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue
                    ),
                    child: Center(
                      child: Text('Сохранить', style: AppTextStyles.textbottom,),
                    ),
                  ),

                )

              ],

            ),
          ),

        )

    );
  }
}


