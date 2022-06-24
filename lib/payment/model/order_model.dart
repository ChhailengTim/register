import 'package:flutter/material.dart';

class OrderModel extends StatelessWidget {
  const OrderModel({Key? key, this.type, this.fee}) : super(key: key);
  final String? type;
  final String? fee;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          type ?? "Subtotal",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
            fontSize: 18,
          ),
        ),
        const Spacer(),
        Text(
          fee ?? "\$20",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
