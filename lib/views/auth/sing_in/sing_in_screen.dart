import 'package:cargo_app/main/main.dart';
import 'package:cargo_app/views/auth/sing_up/sing_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../styles/app_text_styles.dart';
import '../../../utils/strings.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  bool passwordObscured = true;

  phoneField() {
    return TextFormField(
      autofocus: false,
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Номер телефона',
        hintStyle: AppTextStyles.hint16Medium,
      ),
    );
  }

  passwordField() {
    return TextFormField(
      autofocus: false,
      obscureText: passwordObscured,
      decoration: InputDecoration(
        hintText: 'Пароль',
        hintStyle: AppTextStyles.hint16Medium,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              passwordObscured = !passwordObscured;
            });
          },
          child: Padding(
            padding: EdgeInsets.all(11.w),
            child: SvgPicture.asset(
              passwordObscured
                  ? 'assets/icons/password_hidden.svg'
                  : 'assets/icons/password.svg'
            ),
          ),
        ),
      ),
    );
  }

  bool check=false;

  politikConf(){
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              check = !check;
            });
          },
          child: Container(
            width: 23,
            height: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: check
                  ? Color(0xFF3D8BFF)
                  : Color(0xFFE0E0E0),
            ),
            child: check
                ? Center(
              child: Icon(Icons.check,
                  color: Colors.white, size: 15),
            )
                : Center(),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 303.w,
          child: RichText(
            text: TextSpan(
              children: [
                 TextSpan(
                  text: 'Согласен ',
                  style: AppTextStyles.black16Medium,
                ),
                TextSpan(
                  text: 'правилами',
                  style: AppTextStyles.black16SemiboldUnderline,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://drive.google.com/file/d/1EM0uL4W4s605Ou1R3irKuURsvKjxgu4U/view?usp=sharing');
                    },
                ),
                TextSpan(
                  text: ' сайта и ',
                  style: AppTextStyles.black16Medium,
                ),
                TextSpan(
                  text: 'политикой',
                  style: AppTextStyles.black16SemiboldUnderline,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://drive.google.com/file/d/1EM0uL4W4s605Ou1R3irKuURsvKjxgu4U/view?usp=sharing');
                    },
                ),
                 TextSpan(
                  text: ' '
                ),
                TextSpan(
                  text: 'конфиденциальности',
                  style: AppTextStyles.black16SemiboldUnderline,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://drive.google.com/file/d/1EM0uL4W4s605Ou1R3irKuURsvKjxgu4U/view?usp=sharing');
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  forgotPassword(){
    return Center(
      child: RichText(
        text: new TextSpan(
          children: [
            new TextSpan(
              text: 'Забыли пароль',
              style: AppTextStyles.mainColor16SemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                },
            ),

          ],
        ),
      ),
    );
  }

  registration(){
    return Center(
      child: RichText(
        text: new TextSpan(
          children: [
            new TextSpan(
              text: 'Впервые у нас? ',
              style: AppTextStyles.blackGrey16Regular,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                },
            ),
            new TextSpan(
              text: 'Зарегистрироваться',
              style: AppTextStyles.mainColor16SemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SingUpScreen(),
                    ),
                  );
                },
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),
              Text(
                'Вход',
                style: AppTextStyles.kRobotoReg40ColorBlack600,
              ),
              SizedBox(height: 40.h),
              Text(
                Strings.phoneNumber,
                style: AppTextStyles.kRobotoReg12ColorBlack500,
              ),
              SizedBox(
                height: 4.h,
              ),
              phoneField(),
              SizedBox(height: 24.h),
              Text(
                Strings.password,
                style: AppTextStyles.kRobotoReg12ColorBlack500,
              ),
              SizedBox(height: 4.h),
              passwordField(),
              SizedBox(height: 24.h),
              politikConf(),
              SizedBox(height: 48.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Main(),
                    ),
                  );

                },
                child: Text(
                  'Войти',
                  style: AppTextStyles.white16Medium,
                ),
              ),
              SizedBox(height: 169.h),
              forgotPassword(),
              SizedBox(height: 24.h),
              registration(),
              SizedBox(height: 58.h),
            ],
          ),
        ),
      ),
    );
  }
}
