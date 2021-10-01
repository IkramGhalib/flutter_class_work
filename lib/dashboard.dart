import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_1/utils/routes.dart';
import 'package:flutter_day_1/widgets/drawer.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Welocome to Dashbord",
            style: TextStyle(color: Colors.red),
          ),
        ),
        drawer: MyDrawer(),
        body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
            actionButtonDetails: SCActionButtonDetails(
                color: Colors.green,
                elevation: 0,
                icon: Icon(Icons.expand_less)
                ),
            circleColors: [Colors.green, Colors.yellow, Colors.red],
            items: [
              SCBottomBarItem(
                  icon: Icons.access_alarm_sharp,
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.loginRoutes);
                  },
                  title: "Home"),
              SCBottomBarItem(
                  icon: Icons.access_alarm_sharp,
                  onPressed: () {},
                  title: "Profile"),
              SCBottomBarItem(
                  icon: Icons.access_alarm_sharp,
                  onPressed: () {},
                  title: "Alarm"),
              SCBottomBarItem(
                  icon: Icons.access_alarm_sharp,
                  onPressed: () {},
                  title: "logout")
            ],
            circleItems: [
              SCItem(icon: Icon(Icons.add), onPressed: () {}),
              SCItem(icon: Icon(Icons.print), onPressed: () {}),
              SCItem(icon: Icon(Icons.map), onPressed: () {}),
            ],
          ),
          child: Container(
            child: Column(
              children: [Text("Dashborad")],
            ),
          ),
        ),
      ),
    );
  }
}
