import 'package:flutter/material.dart';
import 'package:register/register/model/customtextfield_model.dart';
import 'package:register/register/model/cutombutton.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://images.unsplash.com/photo-1502318217862-aa4e294ba657?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Reset new password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Set the new password for your account so\nyou can login and accesss all the feature.",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Customtextfeild(
                borderColor: Colors.white,
                hintText: "new password",
                //labelText: "Username",
              ),
              const Customtextfeild(
                borderColor: Colors.white,
                hintText: "confirm new password",
                //labelText: "Username",
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: CustomButton(
                  text: "Confirm reset",
                  fillColor: Colors.pink[400],
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
