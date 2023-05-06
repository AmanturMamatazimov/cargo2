// import 'package:flutter/cupertino.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../editing/editing1.dart';
import '../../../main/main.dart';
import '../../../services/service.dart';
import '../sing_up/sing_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool passwordObscured = true;

  @override
  Widget build(BuildContext context) {
    final phoneField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          border: InputBorder.none,
          // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Почта',
        ));
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: passwordObscured,
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        border: InputBorder.none,

        // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Пароль',

        // filled: true,
        // fillColor: Color(0xffEDEDEF),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordObscured = !passwordObscured;
              });
            },
            icon: Icon(
              passwordObscured ? Icons.visibility_off : Icons.visibility,
            )),
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Colors.blue,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
          String ans = await AuthClient()
              .postSingIn(emailController.text, passwordController.text);
          if (ans != null) {
            Map<String, dynamic> userData = jsonDecode(ans);
            String id = userData['id'].toString();
            String userName = userData['name'];
            String userRole = userData['role'];
            print(id);
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString('userId', id);
            prefs.setString('userName', userName);
            prefs.setString('userRole', userRole);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Main(role: userRole)));
          }
        },
        child: const Text(
          'Войти',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            Column(
              children: [
                Image(
                  image: AssetImage('assets/AppIcon.png'),
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 50),
                const Text(
                  'Вход',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFEDEDEF),
                  ),
                  child: phoneField,
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
                const SizedBox(height: 100),
                loginButton,
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'У вас нету аккаунта? ',
                      style: TextStyle(color: Color(0xff444444)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RagistrationScreen()));
                      },
                      child: const Text('Зарегистрироваться',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.blue,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
