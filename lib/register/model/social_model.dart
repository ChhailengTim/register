import 'package:flutter/material.dart';

class SocialModel extends StatelessWidget {
  const SocialModel({Key? key, this.image}) : super(key: key);
  final String? image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      child: Image.network(
        image ?? "",
        fit: BoxFit.cover,
      ),
    );
  }
}
