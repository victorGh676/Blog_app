import 'package:flutter/material.dart';

class AuthenticationField extends StatelessWidget {
  const AuthenticationField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}