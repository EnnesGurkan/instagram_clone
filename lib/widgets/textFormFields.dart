import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final Icon? icon;
  final double radius;
  final Color backgroundColor;
  final double height;

  const CustomTextFormField(
      {Key? key,
      this.hintText,
      this.icon,
      this.radius = 5,
      this.backgroundColor = Colors.white,
      this.height = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10),
          fillColor: backgroundColor,
          filled: true,
          prefixIcon: icon,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
          hintText: hintText,
        ),
      ),
    );
  }
}
