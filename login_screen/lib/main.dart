import 'package:flutter/material.dart';

// to use SystemChrome
import 'package:flutter/services.dart';

import './screens/login_screen.dart';
import './screens/welcome_Screen.dart';
import './screens/signup_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //remove the statis bar in the top
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return MaterialApp(
      // Defining the app general theme
      theme: ThemeData(
        // define a genral theme for the app texts
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Colors.black54,
            fontSize: 16,
          ),
          displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 60,
            fontFamily: 'Abril Fatface',
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Abril Fatface',
          ),
        ),

        //define a general theme for the app colors
        colorScheme: ColorScheme.fromSeed(
          // define app mode to light
          brightness: Brightness.light,

          //automaticaly define a color primary and secondary color from the selected color
          seedColor: const Color(0xFFFF725E),

          //override the primary and secondary color
          primary: const Color(0xFFFF725E),
          secondary: const Color(0xFFFF725E),
        ),
      ),

      //remove the debug banner in the right top corner
      debugShowCheckedModeBanner: false,

      title: 'Login screen App',
      // the first screen to load when the app start
      initialRoute: WelcomeScreen.routeName,

      // define the screen in the app in routes to navigate throw them
      routes: {
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
