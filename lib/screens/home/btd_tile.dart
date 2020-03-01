import 'package:flutter/material.dart';
import 'package:burntreatmentdevice/models/btd.dart';

class BtdTile extends StatelessWidget {

  final Btd btd;
  BtdTile({this.btd});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar (
            radius: 25.0,
            backgroundColor: Colors.brown,
            backgroundImage: AssetImage('assets/burn.png'),
          ),
          title: Text(btd.name),
          subtitle: Column(
                children: <Widget>[
                  Text('Имя: ${btd.name}'),
                  Text('Предзаказ: ${btd.deviceid} тыс. руб.'),
                  Text('Уведомления по:${btd.contacts}'),
                  Text('Контактные данные: ${btd.contact_details}'),
                ],
              ),
        ),
      ),
    );
  }
}
