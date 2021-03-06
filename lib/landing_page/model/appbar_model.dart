import 'package:flutter/material.dart';

class AppbarModel extends StatelessWidget {
  const AppbarModel({Key? key, this.onTap}) : super(key: key);

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onTap,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.orange,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_rounded,
            color: Colors.orange,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
