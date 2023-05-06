import 'package:cargo_app/main/select_contractor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyPost extends StatelessWidget {
  MyPost({Key? key}) : super(key: key);
  var styleBorder = BoxDecoration(
  border: Border.all(
    color: Colors.blue,
  width: 2,
  ),
  borderRadius: BorderRadius.circular(12),
  );
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
                decoration: styleBorder,
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child:
                      Icon(FontAwesomeIcons.bicycle),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Скрябина 24",style: SelectContractor.styleHeader,),
                        Text("Велосипедная дорожка",style: SelectContractor.styleBase,),
                      ],
                    )
                  ],
                ),
              ),
        SizedBox(height: 16,),
        Container(
          decoration: styleBorder,
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child:
                Icon(FontAwesomeIcons.car),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Тыналиева 1/2 ",style: SelectContractor.styleHeader,),
                  Text("Дорога",style: SelectContractor.styleBase,),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 16,),

        Container(
          decoration: styleBorder,
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child:
                Icon(FontAwesomeIcons.shoePrints),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Магистраль на пересечении Тыналиева",style: SelectContractor.styleHeader,),
                  Text("Тротуар",style: SelectContractor.styleBase,),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
