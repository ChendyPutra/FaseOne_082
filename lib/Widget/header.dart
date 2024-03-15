import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        Text("Restaurant BABA"),
        SizedBox(
          height: 25,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://static.vecteezy.com/system/resources/previews/000/656/608/original/vector-restaurant-badge-and-logo-good-for-print.jpg"),
          radius: 80,
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
