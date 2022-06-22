import 'package:flutter/material.dart';
import 'package:register/model/custom_list_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.list),
          onPressed: () {},
        ),
        title: const Text("Profile Screen"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const CircleAvatar(
                backgroundColor: Colors.black12,
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Mr. CHHAILENG TIM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                "Software Developer",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomListModel(
                onTap: () {},
                icon: Icons.my_location_sharp,
                title: "Location",
                text: "Phnom Penh",
              ),
              CustomListModel(
                onTap: () {},
                icon: Icons.email_rounded,
                title: "Email",
                text: "mycrush@gmail.com",
              ),
              CustomListModel(
                onTap: () {},
                icon: Icons.phone,
                title: "Phone",
                text: "+855 963 020 751",
              ),
              CustomListModel(
                onTap: () {},
                icon: Icons.person,
                title: "About me",
                text: "Software Developer on GitHub with dart and flutter",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
