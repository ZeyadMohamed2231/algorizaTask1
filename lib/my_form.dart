import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  final String labelText;
  final TextInputType textInputType;
  final bool visible;
  final Icon icon;

  const MyForm({Key? key,
    required this.labelText,
    required this.textInputType,
    this.visible = false,
    required this.icon,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: visible,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: icon,
        border: const OutlineInputBorder(
        ),
      ),
    );
  }
}
