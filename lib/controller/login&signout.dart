import 'package:firebase_auth/firebase_auth.dart';

signout() async {
  await FirebaseAuth.instance.signOut();
}


