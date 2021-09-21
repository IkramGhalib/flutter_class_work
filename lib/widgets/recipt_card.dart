import 'package:flutter/material.dart';


class Menu extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.restaurant_menu),
            Text("Food Menu"),
            
          ],
        ),
      ),
    
      
    );
  }
}