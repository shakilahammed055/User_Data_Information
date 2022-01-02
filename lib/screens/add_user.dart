import 'package:flutter/material.dart';

enum Gender { Male, Female }

class AdduserScreen extends StatefulWidget {
  const AdduserScreen({Key? key}) : super(key: key);

  @override
  State<AdduserScreen> createState() => _AdduserScreenState();
}

class _AdduserScreenState extends State<AdduserScreen> {
  Gender? _gender = Gender.Male;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          centerTitle: true,
          title: Text(
            "Add new user",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 36,
                        backgroundImage: AssetImage("assets/image/profile.jpg"),
                      ),
                      Transform.translate(
                        offset: Offset(-20, 45),
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
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 102,
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
                  height: 12,
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
                  height: 12,
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
                  height: 14,
                ),
                Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                        Radio(
                          value: Gender.Male,
                          groupValue: _gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 43,
                    ),
                    Row(
                      children: [
                        Text(
                          "Female",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        ),
                        Radio(
                          value: Gender.Female,
                          groupValue: _gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                //  CustomButton(
                //   onTap: (){},
                //   color: AppColor.secondaryColor,
                //   levelColor: AppColor.primaryColor,
                //   buttonLevel: "Save",
                // ),
                Container(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Save",
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
                  height: 24,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              backgroundColor: Color(0xff000000),
              selectedItemColor: Color(0xffFFFFFF),
              unselectedItemColor: Color(0xffFFFFFF),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.exit_to_app), label: "Exit".toUpperCase()),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "User".toUpperCase()),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile".toUpperCase())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
