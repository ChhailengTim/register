import 'package:flutter/material.dart';
<<<<<<< Updated upstream

import 'payment/screen/payment_screen.dart';
=======
import 'package:register/register/screen/login_screen.dart';

>>>>>>> Stashed changes

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
    );
  }
}
