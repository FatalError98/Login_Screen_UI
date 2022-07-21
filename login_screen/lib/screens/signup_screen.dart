import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/button.dart';
import '../widgets/mytextformfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const routeName = '/signup_screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conformPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Background(
          child: Form(
        key: formKey,
        child: Column(
          children: [
            Image.asset(
              'assets/images/SignUp.png',
              fit: BoxFit.cover,
              height: size.height * 0.4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTextFormField(
                  labelText: 'First Name',
                  hintText: 'Enter your First name',
                  prefixIcon: const Icon(Icons.person),
                  errorMessage: 'Enter a valid first name',
                  controller: firstNameController,
                  width: 145,
                  keyboardtype: TextInputType.name,
                ),
                const SizedBox(
                  width: 10,
                ),
                MyTextFormField(
                  labelText: 'Last Name',
                  hintText: 'Enter your last name',
                  prefixIcon: const Icon(Icons.person),
                  errorMessage: 'Enter a valid last name',
                  controller: lastNameController,
                  width: 145,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextFormField(
              labelText: 'Email',
              hintText: 'Enter your email address',
              prefixIcon: const Icon(Icons.email),
              errorMessage: 'Enter a valid email address',
              controller: emailController,
              needValid: true,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextFormField(
              isScure: true,
              labelText: 'Password',
              hintText: 'Enter your password',
              prefixIcon: const Icon(Icons.lock),
              errorMessage: 'Enter a valid password',
              controller: passwordController,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextFormField(
              isScure: true,
              labelText: 'Conform Password',
              hintText: 'ReEnter your password',
              prefixIcon: const Icon(Icons.lock),
              errorMessage: 'Enter a valid Password',
              controller: conformPasswordController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('I already have an account!'),
                TextButton(onPressed: () {}, child: const Text('Login'))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            MyButton(buttonText: 'Sign Up', onPressed: () {})
          ],
        ),
      )),
    );
  }
}
