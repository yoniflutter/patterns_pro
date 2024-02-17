import "package:flutter/material.dart";
import "package:flutter_sizer/flutter_sizer.dart";

class TextInput extends StatelessWidget {
  final String? hint;
  final bool isPassword;
  final Icon? icon;
  const TextInput({super.key, this.hint, required this.isPassword, this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450.dp,
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          
          contentPadding: EdgeInsets.only(left: 20.dp, top: 2.dp, bottom: 2.dp),
          filled: true,
          fillColor: const Color(0xffe0e0e0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.dp),
              borderSide: BorderSide.none),
          hintText: hint ?? 'Text Input',
          prefixIcon: icon ?? Icon(
            Icons.icecream_outlined,
            size: 15.dp,
          ),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color:const Color(0xff828282),
            fontSize: 13.sp,
          )
        ),
      ),
    );
  }
}
