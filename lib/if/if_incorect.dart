import 'package:cargo_app/styles/app_colors.dart';
import 'package:cargo_app/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class IfIncorrect extends StatefulWidget {

  const IfIncorrect({Key? key,TextEditingController? tTemp}) : super(key: key);

  @override
  State<IfIncorrect> createState() => _IfIncorrectState();
}

class _IfIncorrectState extends State<IfIncorrect> {


  TextEditingController t1=TextEditingController();
  bool view=false;
  List<String> arr=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Отследить заказ'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextFormField(
              controller: t1,
            autofocus: false,
            decoration: InputDecoration(
              hintText: "Номер заказа",
              suffixIcon: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                    if(t1.text!='') {
                      arr=t1.text.split(',');
                        view = true;
                      } else view=false;
                    t1.text='';
                    setState(() {

                    });
                    print(view);
                  },
                  child: Icon(Icons.search),
            ),
          ),
        ),
        Text(
            'Отслеживайте до 10 номеров одновременно - введите их, разделяя запятыми',
            style: AppTextStyles.blackGrey12Regular),
        SizedBox(height: 24.h),
        if(!view)...[Text('Вы указали некорректный номер для отслеживания',
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
        )],
              if(view)...[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Результаты отслеживания',
                      style: AppTextStyles.black18Medium),
                    for(int i=0;i<arr.length;i++)...{
                      buildSearch(arr[i]),
                    }
                  ],
                )
      ],
        ],
      ),
    ),)
    ,
    );
  }
  Widget buildSearch(String number){
    return Column(
      children: [
        SizedBox(height: 32.h),
        Container(
          width: 200.w,
          height: 35.h,
          color: AppColors.blue,
          child: Center(
            child: Text('№ Накладной: $number', style: AppTextStyles.white16Medium),
          ),
        ),
        SizedBox(height: 26.h),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/frm1.svg',
                    color: AppColors.blue,
                  ),
                  SizedBox(width: 4.w),
                  Text('Сумма:',style: AppTextStyles.blackGrey12Regular),
                  SizedBox(width: 4.w),
                  Text('986 р.',style: AppTextStyles.black16Medium)
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/frm3.svg',
                    color: AppColors.blue,
                  ),
                  SizedBox(width: 4.w),
                  Text('Способ оплаты:',style: AppTextStyles.blackGrey12Regular),
                  SizedBox(width: 4.w),
                  Text('В долг', style: TextStyle(color: AppColors.mainRed,fontSize: 16.sp),)
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 19.h),
        Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/icons/frm2.svg',
                    color: AppColors.blue,
                  ),
                  SizedBox(width: 4.w),
                  Text('Оплачено:', style: TextStyle(color: AppColors.green,fontSize: 12.sp),),
                  SizedBox(width: 4.w),
                  Text('400 р.',style: AppTextStyles.black16Regular)
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/icons/frm4.svg',
                    color: AppColors.blue,
                  ),
                  SizedBox(width: 4.w),
                  Text('Остаток:',style: TextStyle(color: AppColors.mainRed,fontSize: 12.sp),),
                  SizedBox(width: 4.w),
                  Text('586 р.',style: AppTextStyles.black16Regular),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 19.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/frm5.svg',
              color: AppColors.blue,
            ),
            SizedBox(width: 4.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Дата отправления',style: AppTextStyles.blackGrey12Regular),
                SizedBox(width: 4.w),
                Text('22.04.22',style: AppTextStyles.black16Regular),
              ],
            ),

          ],
        ),
        SizedBox(height: 19.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/frm6.svg',
              color: AppColors.blue,
            ),
            SizedBox(width: 4.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Дата доставки',style: AppTextStyles.blackGrey12Regular),
                Text('22.04.22',style: AppTextStyles.black16Regular)
              ],
            ),

          ],
        ),
        SizedBox(height: 19.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/frm7.svg',
              color: AppColors.blue,
            ),
            SizedBox(width: 4.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Отправитель',style: AppTextStyles.blackGrey12Regular),
                Text('Анна Смолинская',style: AppTextStyles.black16Regular),
              ],
            ),

          ],
        ),
        SizedBox(height: 19.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/frm8.svg',
              color: AppColors.blue,
            ),
            SizedBox(width: 4.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Получатель',style: AppTextStyles.blackGrey12Regular),
                Text('Марина Ивановна',style: AppTextStyles.black16Regular),
              ],
            ),

          ],
        ),
        SizedBox(height: 19.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/frm9.svg',
              color: AppColors.blue,
            ),
            SizedBox(width: 4.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Откуда',style: AppTextStyles.blackGrey12Regular),
                Text('Москва, ул Московская 120, кв 55',style: AppTextStyles.black16Regular),
              ],
            ),

          ],
        ),
        SizedBox(height: 19.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/frm10.svg',
              color: AppColors.blue,
            ),
            SizedBox(width: 4.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Куда',style: AppTextStyles.blackGrey12Regular),
                Container(width:315.w,child: Text('Офис Sapat cargo, г.Бишкек, Токольдош...',style: AppTextStyles.black16Regular))
              ],
            ),

          ],
        ),
      ],
    );
  }
}
