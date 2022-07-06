import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register/product/controller/auth_method.dart';
import 'package:register/product/controller/login_controller.dart';
import 'package:register/product/model/text_form.dart';
import 'package:register/product/screen/login_screen.dart';

import '../model/button_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
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
            CustomTextFormField(
              label: "Confirm password",
              onChanged: (v) {
                loginController.confirmpass(v);
              },
            ),
            CustomButton(
              isEnable: loginController.email.value != '' &&
                      loginController.password.value != '' &&
                      loginController.confirmpass.value != ''
                  ? true
                  : false,
              text: "Register",
              onTap: () {
                signin(loginController.email, loginController.password);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text("Aready have an account?"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreenForm()));
                  },
                  child: const Text(
                    "Log in",
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
