import 'package:burntreatmentdevice/demo/finish.dart';
import 'package:burntreatmentdevice/shared/constants.dart';
import 'package:flutter/material.dart';

class Steps extends MaterialPageRoute<Null> {
  Steps() : super(builder: (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text("Демо - Этапы использования"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/burn-logo.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: <Widget>[
            Text('Регистрация:', style: demoStyle),
            Text('Вы регистрируете купленное устройство по инвентарному номеру.', style: demoStyle),
            SizedBox(height: 20,),
            Text('ПОДГОТОВКА:', style: demoStyle),
            Text('В зависимости от комплектации и вероятного поражения вам могут понадобится дополнительные лекарственные препараты. ' +
                'Для их покупки вы должны обратиться за консультацией к врачу или зарегестрироваться в DocDoc.', style: demoStyle),
            SizedBox(height: 20,),
            Text('ИЗУЧЕНИЕ:', style: demoStyle),
            Text('Важно понимать, что при наступлении несчастного случая, читать инструкцию по применению может быть затруднительно, ' +
                'поэтому постарайтесь заранее прочитать инструкцию и подготовить прибьор к работе.',style: demoStyle),
            SizedBox(height: 20,),
            Text('ПРОГРАММНОЕ ОБЕСПЕЧЕНИЕ:', style: demoStyle),
            Text('Данное приложение будет по мере развития проекта обновляться, поэтому, пожалуйста не игнорируйте оповещения об обновлении.',style: demoStyle),

            SizedBox(height: 20,),
            Text('ИНТГЕГРАЦИЯ:', style: demoStyle),
            Text('Продукт на конечной стадии разработки будет интегрирован со следующими сервисами Сбербанк, для упрощения его использования.'+
            ' Вход по единому индентификатору SberbankID. Покупка устройств, комплектующих и расходных материалов на Беру' +
            ' Телемедицина и хранение медицинских данных в DocDoc',style: demoStyle),


            FlatButton.icon(
                color: Colors.white70,
                onPressed: () => Navigator.push(context, Finish()),
                icon: Icon(Icons.navigate_next),
                label: Text('ДАЛЕЕ')
            ),
          ],
        ),
      ),
    );
  });
}