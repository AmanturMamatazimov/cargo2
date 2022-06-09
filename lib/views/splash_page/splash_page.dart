import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';
import '../../main/main.dart';
import '../auth/sing_in/sing_in_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final box=GetStorage();
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),(){
      if(box.read("access")!=null){
        Grock.toRemove(Main());
      }else{
        Grock.toRemove(Login());
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/logo.png',height: 192,width: 130,),
      ),
    );
  }
}
