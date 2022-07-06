import 'package:flutter/material.dart';

class ProductDashboard extends StatelessWidget {
  const ProductDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Dashboard"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.amber,
              height: 200,
              width: 300,
              child: const Icon(
                Icons.person,
                size: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
