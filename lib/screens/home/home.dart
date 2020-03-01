import 'package:burntreatmentdevice/demo/start.dart';
import 'package:burntreatmentdevice/models/btd.dart';
import 'package:burntreatmentdevice/screens/home/settings_form.dart';
import 'package:burntreatmentdevice/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:burntreatmentdevice/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'btd_list.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    void _showSettingsPanel() {
      showModalBottomSheet(context: context, builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: SettingsForm(),
        );
      });
    }

    return StreamProvider<List<Btd>>.value(
      value: DatabaseService().btds,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('BTD'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () => Navigator.push(context, Start()),
                icon: Icon(Icons.ondemand_video),
                label: Text('Демо')),
            FlatButton.icon(
                onPressed: () => _showSettingsPanel(),
                icon: Icon(Icons.settings),
                label: Text('Настройки')
            ),
            FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('Выход'),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/burn-logo.jpg'),
              fit: BoxFit.cover
            ),
          ),
            child: BtdList()
        ),
      )
    );
  }
}
