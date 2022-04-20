import 'package:flutter/material.dart';

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF4F4F4),
                ),
                child: TextFormField(
                  autofocus: false,
                  decoration:
                  InputDecoration(
                      hintText: "Номер заказа",
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search)
                  ),

                ),
              ),
              Text('''Отслеживайте до 10 номеров одновременно-введите их, 
разделяя запятыми'''),
              SizedBox(height: 24,),
              Text('''Вы указали некорректный номер
для отслеживания''', style: TextStyle(color: Colors.red, fontSize:18),),
              SizedBox(height: 16,),
              Center(
                child: Container(
                  width: 342,
                  height: 145,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF3F3F3)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Как  воспользоваться?', style: TextStyle(fontSize: 18),),
                          SizedBox(height: 8,),
                          Text(
         '''На этой странице можно отслеживать
международные отправления. Для этого введите
в поле номер накладной, состоящей из 7
символов, и нажмите на “Поиск”.''')

                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
