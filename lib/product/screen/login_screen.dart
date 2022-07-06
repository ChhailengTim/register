import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register/product/controller/login_controller.dart';
import 'package:register/product/model/text_form.dart';
import 'package:register/product/screen/register_screen.dart';

import '../model/button_form.dart';
import 'product_dash.dart';

class LoginScreenForm extends StatefulWidget {
  const LoginScreenForm({super.key});

  @override
  State<LoginScreenForm> createState() => _LoginScreenFormState();
}

class _LoginScreenFormState extends State<LoginScreenForm> {
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextFormField(
              label: "Email",
              onChanged: (v) {
                loginController.email(v);
              },
            ),
            CustomTextFormField(
              label: "Password",
              onChanged: (v) {
                loginController.password(v);
              },
            ),
            CustomButton(
              isEnable: loginController.email.value != '' &&
                      loginController.password.value != ''
                  ? true
                  : false,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductDashboard()));
              },
              text: "Log in",
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text("Don't have an account??"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
