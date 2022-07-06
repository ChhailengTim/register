import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;

// class AuthMethods {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // get user details
//   Future<model.User> getUserDetails() async {
//     User currentUser = _auth.currentUser!;

//     DocumentSnapshot documentSnapshot =
//         await _firestore.collection('users').doc(currentUser.uid).get();

//     return model.User.fromSnap(documentSnapshot);
//   }
// }

signin(emailAddress, password) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}
