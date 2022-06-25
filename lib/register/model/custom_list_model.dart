import 'package:flutter/material.dart';

class CustomListModel extends StatelessWidget {
  const CustomListModel({
    Key? key,
    this.icon,
    this.title,
    this.text,
    this.onTap,
  }) : super(key: key);

  final IconData? icon;
  final String? title;
  final String? text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                icon!,
                size: 30,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? "Location",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    text ?? "Phnom Penh",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
