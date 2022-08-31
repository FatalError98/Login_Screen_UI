import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/button.dart';
import '../widgets/mytextformfield.dart';
import './home_screen.dart';
import './signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //a varuable to get the state of the valdation from the TextFromFields
  final formKey = GlobalKey<FormState>();

  void login(BuildContext ctx) {}

  //get the input from Textfields
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Background(
          child: Form(
            // set the formKey as a key in the Form
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                // vector image
                Image.asset(
                  'assets/images/Login.png',
                  fit: BoxFit.cover,
                  height: size.height * 0.4,
                ),

                MyTextFormField(
                  controller: emailController,
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                  prefixIcon: const Icon(Icons.email),
                  keyboardtype: TextInputType.emailAddress,
                  errorMessage: "Please enter a valid email",
                  needValid: true,
                ),

                const SizedBox(
                  height: 20,
                ),

                MyTextFormField(
                  controller: passwordController,
                  isScure: true,
                  errorMessage: 'Please enter a valid password',
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('I don\'t have an Account!'),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              (context), SignUpScreen.routeName);
                        },
                        child: const Text('SignUp'))
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                MyButton(
                    buttonText: 'Login',
                    onPressed: () {
                      // check the key state if its valid or not
                      // if (formKey.currentState!.validate()) {}
                      if (emailController.text == 'test@mail.com' &&
                          passwordController.text == '12345678') {
                        Navigator.pushNamed((context), HomeScreen.routeName);
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content:
                              Text('Wrong password or password. Try again'),
                          behavior: SnackBarBehavior.floating,
                        ));
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
