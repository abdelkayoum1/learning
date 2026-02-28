import 'package:flutter/material.dart';

class CustomerTextFieled extends StatelessWidget {
  final String title;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const CustomerTextFieled({
    super.key,
    required this.title,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hint: Text(title, style: TextStyle(color: Colors.grey)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.grey),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
