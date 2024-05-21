import 'package:flutter/material.dart';

class AuthenticationField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  final bool onlyRead;

  const AuthenticationField({super.key, required this.hintText, required this.controller, this.isObscureText = false, this.onlyRead=false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText es requerido';
        }
        return null;
      },
      obscureText: isObscureText,
      obscuringCharacter: '*',
      readOnly: onlyRead,
    );
  }
}
