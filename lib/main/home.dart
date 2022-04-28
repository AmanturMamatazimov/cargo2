import 'package:cargo_app/if/if_incorect.dart';
import 'package:cargo_app/pain/duty.dart';
import 'package:cargo_app/pain/paid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_text_styles.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController? textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Отследить заказ'),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 32, right: 16),
        child:  SingleChildScrollView(
          child: Column(
     mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              TextFormField(
                onChanged: (value){
                  setState(() {

                  });
                },
                controller: textEditingController,
                autofocus: false,
                decoration:
                InputDecoration(
                  hintText: "Номер заказа",
                  suffixIcon: GestureDetector(
                    onTap: (){
                      FocusScope.of(context).requestFocus(new FocusNode());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IfIncorrect(),
                        ),
                      );
                    },
                      child: Icon(Icons.search))
                ),

              ),
              SizedBox(height: 16.h),
              Text(
'Номер накладной указан под штрих-кодом в сопроводительной накладной, которую Вы получаете от курьера.',
                style: AppTextStyles.hometext,
              ),

              SizedBox(height: 16.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Paid(),
                        ),
                      );
                    },

                    child: Container(
                      width: 164.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.check_circle_outline,color: Colors.white,),
                                    Text("Оплачено",style: AppTextStyles.textbottom,),
                                  ],
                                ),



                          Text('50 000руб',style: AppTextStyles.textbottom)
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => const Duty(),
                      ),
                      );
                    },
                    child: Container(
                        width: 164.w,
                        height: 55.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.remove_circle_outline,color: Colors.white,),
                                  Text("Долг",style: AppTextStyles.textbottom),
                                ],
                              ),


Text('40 000руб',style: AppTextStyles.textbottom)
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              Center(
                child: Image.asset('assets/car.png',height: 300.h,width: 300.w,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
