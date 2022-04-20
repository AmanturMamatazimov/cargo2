import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class QuestionAnswer extends StatefulWidget {
  const QuestionAnswer({Key? key}) : super(key: key);

  @override
  State<QuestionAnswer> createState() => _QuestionAnswerState();
}

class _QuestionAnswerState extends State<QuestionAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вопрос / Ответ'),
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: const <Widget>[
              GFAccordion(
                title: "Как отследить мою посылку?",
                content:
                '''Повседневная практика показывает, что
консультация с широким активом не даёт нам
иного выбора, кроме определения 
соответствующих условий активизации.''',
              ),
              GFAccordion(
                title: "Как отследить мою посылку?",
                content:
                '''Повседневная практика показывает, что
консультация с широким активом не даёт нам
иного выбора, кроме определения 
соответствующих условий активизации.''',
              ),
              GFAccordion(
                title: '''Какие данные получателя
нужны при отправке?''',
                content:
                '''Повседневная практика показывает, что
консультация с широким активом не даёт нам
иного выбора, кроме определения 
соответствующих условий активизации.''',
              ),
              GFAccordion(
                title: "Как отследить мою посылку?",
                content:
                '''Повседневная практика показывает, что
консультация с широким активом не даёт нам
иного выбора, кроме определения 
соответствующих условий активизации.''',
              ),
              GFAccordion(
                title: "Как отследить мою посылку?",
                content:
                '''Повседневная практика показывает, что
консультация с широким активом не даёт нам
иного выбора, кроме определения 
соответствующих условий активизации.''',
              )
            ],
          ),
        ),
      ),
    );
  }
}
