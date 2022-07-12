import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';

class drawerWidget extends StatefulWidget {
  const drawerWidget({Key? key}) : super(key: key);

  @override
  State<drawerWidget> createState() => _drawerWidgetState();
}

class _drawerWidgetState extends State<drawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    
      child: Container(
        color: Color.fromARGB(50, 150, 122, 225),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 150, 122, 225)),
                accountName: Text("Saahil Doshi"),
                accountEmail: Text("saahil.d@ahduni.edu.in"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/dp.jpg"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Color.fromARGB(255, 0, 201, 162),
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Color.fromARGB(255, 0, 201, 162),
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.heart,
                color: Color.fromARGB(255, 0, 201, 162),
              ),
              title: Text(
                "Favorites",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Color.fromARGB(255, 0, 201, 162),
              ),
              title: Text(
                "Contact us",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.question,
                color: Color.fromARGB(255, 0, 201, 162),
              ),
              title: Text(
                "FAQ's",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.at,
                color: Color.fromARGB(255, 0, 201, 162),
              ),
              title: Text(
                "About Us",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
