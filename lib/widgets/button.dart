import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Button extends StatelessWidget {
  final String? text;
  const Button({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.dp,
      height: 35.dp,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text ?? "Text",
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
