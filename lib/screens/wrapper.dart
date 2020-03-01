import 'package:burntreatmentdevice/screens/authenticate/authenticate.dart';
import 'package:burntreatmentdevice/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:burntreatmentdevice/models/user.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }

}