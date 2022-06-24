import 'package:flutter/material.dart';
import 'package:register/payment/model/card_model.dart';
import 'package:register/payment/model/order_model.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text(
          "Payment",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardCustom(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Your Order",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            const OrderModel(),
            const SizedBox(
              height: 10,
            ),
            const OrderModel(
              type: "Shipping",
              fee: "Free",
            ),
            const SizedBox(
              height: 10,
            ),
            const OrderModel(
              type: "Tax",
              fee: "\$2",
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  "Subtotal",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(
                  "\$22",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Pay now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
