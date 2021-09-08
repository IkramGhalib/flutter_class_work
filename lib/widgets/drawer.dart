import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

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
                  accountEmail: Text("IkramGhalib@gmail.com"), accountName: Text("Ikram"),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/login.png"),),))

          ],
          // padding: EdgeInsets.zero,

        ),

      ),
      
    );
  }
}