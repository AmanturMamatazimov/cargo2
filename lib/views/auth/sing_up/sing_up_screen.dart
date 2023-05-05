import 'dart:convert';

import 'package:cargo_app/main/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../services/service.dart';
import '../sing_in/sing_in_screen.dart';

class RagistrationScreen extends StatefulWidget {
  const RagistrationScreen({Key? key}) : super(key: key);

  @override
  State<RagistrationScreen> createState() => _RagistrationScreenState();
}

class _RagistrationScreenState extends State<RagistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailEditingController = new TextEditingController();
  final fioEditingController = new TextEditingController();
  final passwordController = new TextEditingController();
  bool passwordObscured = true;

  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  bool check1 = false;
  bool check2 = false;

  @override
  Widget build(BuildContext context) {
    final fioField = TextFormField(
        autofocus: false,
        controller: fioEditingController,
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) {
          fioEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Имя пользователя',
        ));

    final emailField = TextFormField(
        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) {
          emailEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          hintText: 'Почта',
          border: InputBorder.none,
        ));
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Пароль',
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordObscured = !passwordObscured;
              });
            },
            icon: Icon(
              passwordObscured ? Icons.visibility_off : Icons.vignette,
            )),
      ),
    );

    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: const Color(0xffFFB951),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
          var json = {
            'name': fioEditingController.text,
            'email': emailEditingController.text,
            'password': passwordController.text,
          };
          String ans = await AuthClient().postSingUp(json);
          if (ans != null) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
            Map<String, dynamic> userData = jsonDecode(ans);
            String id = userData['id'].toString();
            String userName = userData['name'];
            String userRole = userData['role'];
            print(id);
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString('userId', id);
            prefs.setString('userName', userName);
            prefs.setString('userRole', userRole);
          }
        },
        child: const Text(
          'Зарегистироваться',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            const Text("Registor"),
            const SizedBox(height: 25),
            const Text(
              'Регистрация',
              style: TextStyle(
                  color: Color(0xFF444444),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFEDEDEF),
              ),
              child: fioField,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFEDEDEF),
              ),
              child: emailField,
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFEDEDEF),
              ),
              child: passwordField,
            ),
            const SizedBox(height: 20),
            signUpButton,
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('У вас есть аккаунт? '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xffFFB951)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
