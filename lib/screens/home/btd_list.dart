import 'package:burntreatmentdevice/models/btd.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'btd_tile.dart';


class BtdList extends StatefulWidget {
  @override
  _BtdListState createState() => _BtdListState();
}

class _BtdListState extends State<BtdList> {
  @override
  Widget build(BuildContext context) {

    final btds = Provider.of<List<Btd>>(context) ?? [];
//    btds.forEach((btd) {
//      print(btd.name);
//      print(btd.contacts);
//      print(btd.deviceid);
//    });

    return ListView.builder(
      itemCount: btds.length,
      itemBuilder: (context, index) {
        return BtdTile(btd: btds[index]);
      },
    );
  }
}
