import 'package:flutter/material.dart';

class ProductModel extends StatelessWidget {
  const ProductModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: const [
          Text(
            "CHHAILENG TIM",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Spacer(),
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/564x/ef/62/9a/ef629a6a997f2b47e49aecb0c86b8af1.jpg"),
          ),
        ],
      ),
    );
  }
}
