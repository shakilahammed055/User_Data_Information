import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:information/screens/login_screen.dart';
import 'package:information/screens/user_list.dart';
import 'package:information/screens/user_profile.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isObscure = true;
  int _value = 1;
  bool isloading = false;
  Future signup() async {
    setState(() {
      isloading = true;
    });
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      if (userCredential.user != null) {
        Route route = MaterialPageRoute(builder: (context) => UserlistScreen());
        Navigator.push(context, route);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    setState(() {
      isloading = false;
    });
  }

  TextEditingController? controller;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, LoginScreen);
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
                    height: 15,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Stack(
                      // overflow: Overflow.visible,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            "assets/images/pic1.jpg",
                          ),
                        ),
                        // Positioned(
                        //   // top: 70,
                        //   // right: 50,
                        //   bottom: -5,
                        //   left: 0,
                        //   // child: CircleAvatar(

                        //   //   radius: 20,
                        //   //   backgroundColor: Colors.black,
                        //   //   backgroundImage: AssetImage(
                        //   //     "assets/images/camera.png",

                        //   //   ),
                        //   // ),
                        //   child: CircleAvatar(
                        //     // radius: 20,
                        //     backgroundColor: Colors.black,
                        //     child: IconButton(
                        //       onPressed: () {},
                        //       icon: Icon(Icons.camera_alt),
                        //       color: Colors.white,
                        //     ),
                        //   ),
                        // ),
                        Transform.translate(
                          offset: Offset(-5, 65),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Color(0xff000000),
                            ),
                          ),
                          // child: CircleAvatar(
                          //   // radius: 20,
                          //   backgroundColor: Colors.black,
                          //   child: IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(Icons.camera_alt),
                          //     color: Colors.white,
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    onTap: () {},
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Name",
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
                    height: 13,
                  ),
                  TextField(
                    controller: emailcontroller,
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
                    controller: passwordcontroller,
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
                    height: 12,
                  ),
                  TextField(
                    // onTap: () {},
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter Mobile Number",
                      suffixIcon: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Verify",
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
                    height: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Gender",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = 1;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  isloading
                      ? CircularProgressIndicator()
                      : Container(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                signup();
                              });
                            },
                            child: Text(
                              "Sign Up",
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                      ),
                      TextButton(
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => LoginScreen());
                          Navigator.push(context, route);
                        },
                        child: Text("Login"),
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
