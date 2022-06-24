import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({
    Key? key,
    this.type,
    this.holdername,
    this.name,
    this.cardnumber,
    this.numbercard,
    this.date,
  }) : super(key: key);

  final String? type;
  final String? holdername;
  final String? name;
  final String? cardnumber;
  final String? numbercard;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 210,
      child: Card(
        color: Colors.green[200],
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  Text(
                    type ?? "VISA",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                holdername ?? "CARD HOLDER NAME",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              Text(
                name ?? "CHHAILENG TIM",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    cardnumber ?? "CARD NUMBER",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "VALID DATE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    numbercard ?? "1234 5678 4321 8765",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    date ?? "04/02",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
