

import 'package:flutter/material.dart';
import 'package:flutter_day_1/widgets/drawer.dart';


class Dashboard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Welocome to Dashbord",style: TextStyle(color: Colors.red),),),
        drawer: MyDrawer(),
        
      ),
    );
    
  }
}