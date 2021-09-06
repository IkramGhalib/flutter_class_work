import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    bool _txtpassword=false;
    return Material(
      color: Colors.green,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "Welcome to $name",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter your Email",
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.purple),
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: 40.0),
                TextFormField(
                  obscureText: _txtpassword,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter password",
                      hintStyle:
                          TextStyle(fontSize: 23.0, color: Colors.yellow),
                      border: OutlineInputBorder(),
                      suffix: IconButton(
                        icon: Icon(_txtpassword?Icons.remove_red_eye:Icons.security),
                        onPressed: () {
                          setState(() {
                            _txtpassword =! _txtpassword;
                          });
                        },
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
