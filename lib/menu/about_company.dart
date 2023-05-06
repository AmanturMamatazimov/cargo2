import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_text_styles.dart';

class AboutCompany extends StatefulWidget {
  const AboutCompany({Key? key}) : super(key: key);

  @override
  State<AboutCompany> createState() => _AboutCompanyState();
}

class _AboutCompanyState extends State<AboutCompany> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('О компании'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Подробнее о АманЖол',
              style: AppTextStyles.about,
            ),
            SizedBox(height: 24.h),
            Text(
              'Значимость этих проблем настолько очевидна, что укрепление и развитие внутренней структуры говорит о возможностях распределения внутренних резервов и ресурсов. В рамках спецификации современных стандартов, непосредственные участники технического прогресса будут объективно рассмотрены соответствующими инстанциями. Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности создаёт необходимость включения в производственный план целого ряда внеочередных мероприятий с учётом комплекса существующих финансовых и административных условий.',
              style: AppTextStyles.black14Medium,
            )
          ],
        ),
      ),
    );
  }
}
