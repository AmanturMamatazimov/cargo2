import 'package:cargo_app/editing/calendar.dart';
import 'package:cargo_app/styles/app_colors.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Editing1 extends StatefulWidget {
  const Editing1({Key? key}) : super(key: key);

  @override
  State<Editing1> createState() => _Editing1State();
}

class _Editing1State extends State<Editing1> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
  List listItem = ['fsfdsfds', 'sdfsgfdgsfd', 'sfsf'];

  String? selectedValue = 'Женский';
  final _dropdownFormKey = GlobalKey<FormState>();

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Женский"), value: "Женский"),
      DropdownMenuItem(child: Text("Мужской"), value: "Мужской"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Редактирование'),
        ),
        body: GestureDetector(
          onTap: ()=>FocusScope.of(context).requestFocus(new FocusNode()),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Имя', style: AppTextStyles.black12Medium),
                SizedBox(height: 4.h),
                TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "Марина",
                    // border: InputBorder.none,
                  ),
                ),
                SizedBox(height: 15.h),
                Text('Фамилия', style: AppTextStyles.black12Medium),
                SizedBox(height: 4.h),
                TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "Ивановна",
                    // border: InputBorder.none,
                  ),
                ),
                SizedBox(height: 15.h),
                Text('Номер телефона', style: AppTextStyles.black12Medium),
                SizedBox(height: 4.h),
                TextField(
                  keyboardType: TextInputType.phone,
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "+996 705 779 778",
                    // border: InputBorder.none,
                  ),
                ),
                SizedBox(height: 15.h),
                Text('Место проживания', style: AppTextStyles.black12Medium),
                SizedBox(height: 4.h),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "Кыргызстан,Бишкек",
                    // border: InputBorder.none,
                  ),
                ),
                SizedBox(height: 15.h),
                Text('Дата рождения', style: AppTextStyles.black12Medium),
                SizedBox(height: 4.h),
                GestureDetector(
                  onTap: () => _selectDate(context),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF3F3F3)),
                    child: Center(
                      child: Text(
                        "${selectedDate.toLocal()}".split(' ')[0],
                        style: AppTextStyles.black16Medium,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Text('Пол', style: AppTextStyles.black12Medium),
                Container(
                  child: Form(
                      key: _dropdownFormKey,
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Color(0xffF3F3F3),
                          ),
                          validator: (value) =>
                              value == null ? "Select a country" : null,
                          dropdownColor: Color(0xffF3F3F3),
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: dropdownItems)),
                ),
                SizedBox(
                  height: 29.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.mainColor),
                    child: Center(
                      child: Text(
                        'Сохранить',
                        style: AppTextStyles.textbottom,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
