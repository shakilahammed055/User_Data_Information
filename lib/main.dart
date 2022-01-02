import 'package:flutter/material.dart';
// import 'package:information/screens/add_user.dart';
// import 'package:information/screens/user_list.dart';
// import 'package:information/screens/signup_screen.dart';
// import 'package:information/screens/user_profile.dart';
// import 'package:information/screens/login_screen.dart';
import 'package:information/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Information",
      home: WelcomeScreen(),
      // home: LoginScreen(),
      // home: SignupScreen(),
      // home: UserprofileScreen(),
      // home: UserlistScreen(),
      // home: AdduserScreen(),
    );
  }
}
