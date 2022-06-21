import 'package:flutter/material.dart';
import 'package:register/model/customtextfield_model.dart';
import 'package:register/model/cutombutton.dart';
import 'package:register/model/social_model.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isCheck = false;
  @override
  void initState() {
    isCheck = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1507499739999-097706ad8914?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=689&q=80",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Stack(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 45,
                          child: Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.black26,
                          ),
                        ),
                        Positioned(
                          top: 65,
                          left: 65,
                          child: CircleAvatar(
                            backgroundColor: Colors.black12,
                            radius: 8,
                            child: Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Customtextfeild(
                  borderColor: Colors.white,
                  hintText: "First name",
                  //labelText: "Username",
                ),
                const Customtextfeild(
                  borderColor: Colors.white,
                  hintText: "Last name",
                  //labelText: "Username",
                ),
                const Customtextfeild(
                  borderColor: Colors.white,
                  hintText: "Email or Phone",
                  //labelText: "Username",
                ),
                const Customtextfeild(
                  borderColor: Colors.white,
                  hintText: "Password",
                  //labelText: "Username",
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isCheck,
                        onChanged: (bool) {
                          setState(() {
                            isCheck = !isCheck;
                          });
                        }),
                    const Text(
                      "I accept all term and conditions",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: CustomButton(
                    text: "Register",
                    fillColor: Colors.pink[400],
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  "Or create account using social media",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      SocialModel(
                        image:
                            "https://seeklogo.com/images/F/facebook-icon-circle-logo-09F32F61FF-seeklogo.com.png",
                      ),
                      SocialModel(
                        image:
                            "https://cdn.freebiesupply.com/logos/large/2x/google-g-2015-logo-png-transparent.png",
                      ),
                      SocialModel(
                        image:
                            "http://assets.stickpng.com/images/5a2fe3efcc45e43754640848.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
