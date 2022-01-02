import 'package:flutter/material.dart';

class UserlistScreen extends StatelessWidget {
  const UserlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        centerTitle: true,
        title: Text(
          "User List",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.person),
                    Text(
                      "Total User",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                      ),
                    ),
                    Text(
                      "36",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.person_add,
                    color: Color(0xffFFFFFF),
                    size: 24.0,
                  ),
                  label: Text('Add new User'),
                  onPressed: () {
                    print('Button Pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff000000),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(7.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            // CustomTextField(
            //   hintText: "Search...",
            //   prefixIcon: Icon(Icons.search),
            // ),
            TextField(
              onTap: () {},
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Search",
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
            Divider(
              thickness: 1,
              color: Color(0xff000000).withOpacity(0.25),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage("assets/image/profile.jpg"),
                      ),
                      title: Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000),
                        ),
                      ),
                      subtitle: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000).withOpacity(0.4)),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Text(
                                      "Are you sure ?",
                                    ),
                                    content: Container(
                                      height: 188,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Divider(
                                            thickness: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // actionsAlignment: MainAxisAlignment.spaceBetween,
                                    actions: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.grey),
                                          onPressed: () {},
                                          child: Text("Cancel")),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.redAccent),
                                          onPressed: () {},
                                          child: Text("Confirm"))
                                    ],
                                  ));
                        },
                        child: Text(
                          'Remove',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(71, 32),
                          primary: Color(0xffF2F2F7).withOpacity(0.50),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(7), // <-- Radius
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
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
    );
  }
}
