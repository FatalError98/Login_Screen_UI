// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/background.dart';
import './login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const routeName = '/Welcome_Screen';

  void selectPage(BuildContext ctx) {
    // change the screen without the abilty to go back
    Navigator.pushReplacementNamed((ctx), LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    //get the sizes of the device height and width
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              // vector image
              Image.asset(
                'assets/images/Welcome-amico.png',
                fit: BoxFit.cover,
                height: size.height * 0.45,
              ),
              // some welcome text
              Flexible(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      'Welcome!',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'it\'s your time to code, Join us now!',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),

              Flexible(
                flex: 2,
                child: MyButton(
                  buttonText: 'Get Started',
                  onPressed: () => selectPage(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
