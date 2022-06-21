import 'package:flutter/material.dart';
import 'package:register/model/customtextfield_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            const Text(
              "Sign in to your account",
              style: TextStyle(color: Colors.black26),
            ),
            const SizedBox(
              height: 20,
            ),
            const Customtextfeild(
              borderColor: Colors.black12,
              hintText: "Username",
              //labelText: "Username",
            ),
            const Customtextfeild(
              borderColor: Colors.black12,
              hintText: "Password",
              //labelText: "Password",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "Forgot your password?",
                  style: TextStyle(color: Colors.black26),
                ),
              ],
            ),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.pink),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text("SIGN IN"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
