import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class IconButtons extends StatelessWidget {
  final String? asset;
  final String? text;
  const IconButtons({super.key, this.asset, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.dp),
          color: const Color(0xffe0e0e0)),
      padding: EdgeInsets.all(8.dp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            asset ?? "assets/icons/google.png",
            width: 28.dp,
            height: 28.dp,
            scale: 1,
          ),
          SizedBox(
            width: 5.dp,
          ),
          Text(text ?? "Icon Button Text")
        ],
      ),
    );
  }
}
