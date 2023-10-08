
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';


class FirebaseService {


  Future<void> initializeFlutterFirebase(BuildContext context) async {
    await Firebase.initializeApp();

  }
}
