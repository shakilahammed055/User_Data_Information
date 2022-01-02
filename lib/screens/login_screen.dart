import 'package:flutter/material.dart';
import 'package:information/screens/signup_screen.dart';
import 'package:information/screens/welcome.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   children: [
                  //     Icon(
                  //       Icons.arrow_back_ios,
                  //       color: Colors.blue,
                  //     ),
                  //     Text(
                  //       "Back",
                  //       style: TextStyle(
                  //         color: Colors.blue,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, WelcomeScreen);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios),
                            Text("Back"),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 52,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Enter your email adress and password to access your account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  SizedBox(
                    height: 102,
                  ),
                  TextField(
                    onTap: () {},
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        // borderSide: BorderSide(
                        //   color: Colors.green,
                        // ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    // onTap: () {},
                    obscureText: _isObscure,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(
                    height: 59,
                  ),
                  Container(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 17,
                          letterSpacing: 1,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        // padding: EdgeInsets.symmetric(
                        //   horizontal: 160,
                        //   vertical: 15,
                        // ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                      ),
                      TextButton(
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => SignupScreen());
                          Navigator.push(context, route);
                        },
                        child: Text("Sign Up"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
