import 'package:flutter/material.dart';

import '../screens/login_screen.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text(buttonText,
              style: Theme.of(context).textTheme.displayMedium),
        ),
      ),
    );
  }
}
