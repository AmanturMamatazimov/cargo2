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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Имя'),
                Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffF3F3F3 )
                  ),
                  child: TextField(
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
                  child: TextField(
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
                  child: TextField(
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
                  child: TextField(
                    autofocus: false,
                    decoration:
                    InputDecoration(
                      hintText: "Кыргызстан,Бишкек",
                      // border: InputBorder.none,

                    ),

                  ),
                ),




                SizedBox(height: 15,),
                Text('Дата рождения'),





                Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffF3F3F3 )
                  ),
                  child: TextField(
                    autofocus: false,
                    decoration:
                    InputDecoration(
                      hintText: "23.06.2001",
                      // border: InputBorder.none,

                    ),

                  ),
                ),




                SizedBox(height: 15,),
                Text('Пол'),
                Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffF3F3F3 )
                  ),
                  child: TextField(
                    autofocus: false,
                    decoration:
                    InputDecoration(
                      hintText: "Женский",
                      suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),




                    ),

                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Calendar(),
                        )
                    );
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


