import 'package:flutter/material.dart';

class SearchModel extends StatelessWidget {
  const SearchModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search your product...",
          suffix: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
