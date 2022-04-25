import 'package:cargo_app/styles/app_colors.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IfIncorrect extends StatefulWidget {
  const IfIncorrect({Key? key}) : super(key: key);

  @override
  State<IfIncorrect> createState() => _IfIncorrectState();
}

class _IfIncorrectState extends State<IfIncorrect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Отследить заказ'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              autofocus: false,
              decoration: InputDecoration(
                  hintText: "Номер заказа", suffixIcon: Icon(Icons.search)),
            ),
            Text(
                'Отслеживайте до 10 номеров одновременно - введите их, разделяя запятыми',
                style: AppTextStyles.blackGrey12Regular),
            SizedBox(height: 24.h),
            Text('Вы указали некорректный номер для отслеживания',
                style: AppTextStyles.red18Medium),
            SizedBox(height: 24.h),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.filColor),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Как  воспользоваться?',
                      style: AppTextStyles.black18SemiBold,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'На этой странице можно отслеживать международные отправления. Для этого введите в поле номер накладной, состоящей из 7 символов, и нажмите на “Поиск”.',
                      style: AppTextStyles.black14Medium,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
