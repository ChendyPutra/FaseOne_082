import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  FooterWidget({super.key, required this.onPressedSubmit});

  final VoidCallback onPressedSubmit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedSubmit,
          child: Text('Submit'),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
