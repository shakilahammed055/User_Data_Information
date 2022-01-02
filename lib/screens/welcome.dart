import 'package:flutter/material.dart';
import 'package:information/screens/login_screen.dart';
import 'package:information/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/PUBG.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "TestME",
                      style: TextStyle(
                        fontSize: 53,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 100,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 6,
                    ),
                    // height: 40,
                    // width: 210,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "USER AUTHENTICA",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 74,
                  ),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => LoginScreen());
                        Navigator.push(context, route);
                      },
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
                ),
                SizedBox(
                  height: 13,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 74,
                  ),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => SignupScreen());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 17,
                            letterSpacing: 1,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade100,
                        // padding: EdgeInsets.symmetric(
                        //   horizontal: 150.5,
                        //   vertical: 15,
                        // ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
