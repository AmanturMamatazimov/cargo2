import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Safety extends StatefulWidget {
  const Safety({Key? key}) : super(key: key);

  @override
  State<Safety> createState() => _SafetyState();
}

class _SafetyState extends State<Safety> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Политика конфиденциальности'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          children: <Widget>[
            Text('Пользовательское соглашение', style: AppTextStyles.about,),
            SizedBox(height: 24.h),
            Text(
              'Значимость этих проблем настолько очевидна, что укрепление и развитие внутренней структуры говорит о возможностях распределения внутренних резервов и ресурсов. В рамках спецификации современных стандартов, непосредственные участники технического прогресса будут объективно рассмотрены соответствующими инстанциями. \n\nПовседневная практика показывает, что постоянный количественный рост и сфера нашей активности создаёт необходимость включения в производственный план целого ряда внеочередных мероприятий с учётом комплекса существующих финансовых и административных условий. В частности, выбранный нами инновационный путь способствует подготовке и реализации новых принципов формирования материально-технической и кадровой базы. Приятно, граждане, наблюдать, как сделанные на базе интернет-аналитики выводы формируют глобальную экономическую сеть и при этом -  функционально разнесены на независимые элементы.',
              style:AppTextStyles.black14Regular,)
          ],
        ),
      ),
    );
  }
}
