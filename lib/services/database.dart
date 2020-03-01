import 'package:burntreatmentdevice/models/btd.dart';
import 'package:burntreatmentdevice/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference btdCollection = Firestore.instance.collection('btd');

  Future updateUserData(String name, String contacts, int deviceid, String contact_details) async {
    return await btdCollection.document(uid).setData({
      'name': name,
      'contacts': contacts,
      'deviceid': deviceid,
      'contact_details': contact_details
    });
  }

  //brew list from snapshot
  List<Btd> _btdListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Btd(
        name: doc.data['name'] ?? '',
        contacts: doc.data['contacts'] ?? '',
        deviceid: doc.data['deviceid'] ?? 10,
        contact_details: doc.data['contact_details'] ?? ''
      );
    }).toList();
  }

  //userData from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.data['name'],
      contacts: snapshot.data['name'],
      deviceid: snapshot.data['deviceid'],
      contact_details: snapshot.data['contact_details']
    );
  }

  //get btds stream
  Stream<List<Btd>> get btds {
    return btdCollection.snapshots()
      .map(_btdListFromSnapshot);
  }

  //get user doc stream
  Stream<UserData> get userData{
    return btdCollection.document(uid).snapshots().map(_userDataFromSnapshot);
  }

}