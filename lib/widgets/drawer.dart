import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.zero,
        color: Colors.green,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.red),
                  accountEmail: Text("IkramGhalib@gmail.com"),
                  accountName: Text("Ikram"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/login.png"),
                  ),
                )),
            ListTile(
              onTap: () {
                print("Drawer button clicked");
              },
              leading: Icon(CupertinoIcons.person),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),

            ListTile(
              onTap: () {
                print("Drawer2 button clicked");
              },
              leading: Icon(Icons.logout,color: Colors.white,),
              title: Text(
                "Notification",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
          // padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
