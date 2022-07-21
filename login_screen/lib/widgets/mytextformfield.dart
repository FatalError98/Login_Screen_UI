import 'package:flutter/material.dart';
// import the package to use Email Valdator
import 'package:email_validator/email_validator.dart';

class MyTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Icon prefixIcon;
  final TextInputType keyboardtype;
  final TextEditingController controller;
  final String errorMessage;
  final double width;
  final bool needValid;
  final bool isScure;
  const MyTextFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    this.keyboardtype = TextInputType.text,
    required this.errorMessage,
    required this.controller,
    this.width = 300,
    this.needValid = false,
    this.isScure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        obscureText: isScure,
        // to validate the input as the user types
        autovalidateMode: AutovalidateMode.onUserInteraction,
        // Validate the email using EmailValidator Package
        validator: needValid
            ? (value) => EmailValidator.validate(value!) ? null : errorMessage
            : null,
        // autofillHints: const [AutofillHints.email],
        // Change the layout of the user keyborard to fit email entery adding @ and .com
        keyboardType: keyboardtype,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
