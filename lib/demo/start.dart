import 'package:burntreatmentdevice/demo/steps.dart';
import 'package:burntreatmentdevice/shared/constants.dart';
import 'package:flutter/material.dart';

class Start extends MaterialPageRoute<Null> {
  Start() : super(builder: (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text("Демо - Старт"),
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
            Text('НАИМЕНОВАНИЕ:', style: demoStyle),
            Text('BTD - Burn Treatment Device - противоожоговое устройство', style: demoStyle),
            SizedBox(height: 20,),
            Text('НАЗНАЧЕНИЕ:', style: demoStyle),
            Text('Использование в качестве перевязочного материала нового поколения при ожогах', style: demoStyle),
            SizedBox(height: 20,),
            Text('ПРЕДЗАКАЗ:', style: demoStyle),
            Text('Наш продукт пока в стадии разработки, поэтому Вы можете сделать только предзаказ и, когда сделаем первую партию, то ' +
                'обязательно свяжемся с Вами. Ваше мнение очень важно для нас, так как нам нужно понять спрос на устроуство.',style: demoStyle),
            FlatButton.icon(
              color: Colors.white70,
                onPressed: () => Navigator.push(context, Steps()),
                icon: Icon(Icons.navigate_next),
                label: Text('ДАЛЕЕ')
            ),
          ],
        ),
      ),
    );
  });
}