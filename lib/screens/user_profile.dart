import 'package:flutter/material.dart';

class UserprofileScreen extends StatelessWidget {
  const UserprofileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8,
            ),
            child: Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/images/pic1.jpg"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mr. John Doe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "email@email.com",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Phone: 01771604501",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 16),
                  //   height: 40,
                  //   width: double.infinity,
                  //   child: Card(
                  //     child: Center(
                  //         child: Text(
                  //       "Created Date & Time: 12/12/2021 06.30 AM",
                  //       style: TextStyle(fontSize: 16),
                  //     )),
                  //     // color: Colors.red,
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Card(
                      child: SizedBox(
                        height: 32,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Created Date & Time:",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              "12/12/2021 06.30 AM",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Icon(Icons.location_on_sharp),
                        Text(
                          "Location",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 16),
                  //   child: Container(
                  //     color: Colors.green,
                  //     height: 227,
                  //     width: double.infinity,
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(4.0),
                  //       child: Image.asset(
                  //         "assets/images/map.jpg",
                  //         width: double.infinity,
                  //       ),
                  //     ),
                  //   ),
                  // )
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/images/map.jpg"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              spreadRadius: 0,
              blurRadius: 10,
            ),
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
                icon: Icon(Icons.exit_to_app),
                label: "Exit".toUpperCase(),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "User".toUpperCase(),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile".toUpperCase(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
