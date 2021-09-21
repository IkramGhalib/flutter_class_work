import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_day_1/dashboard.dart';
import 'package:flutter_day_1/utils/routes.dart';
import 'package:flutter_day_1/widgets/mywidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // TextEditingController  = TextEditingController();

  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  void validation() {
  //   if (email.text.trim().isEmpty || email.text.trim() == null) {
  //     var showSnackBar = globalKey.currentState!
  //         .showSnackBar(SnackBar(content: Text("Email Enter")));
  //     return;
    // }
  }

  @override
  Widget build(BuildContext context) {
    String name = "";
    // bool _txtpassword = false;
    // bool changeButton = false;
    return Material(
      key: globalKey,
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
            child: SingleChildScrollView(
              child: Column(
                
                children: [
                  TextFormWidget(
                    controller: email,
                    obscureText: false,
                    labelText: "Enter email",
                    hintText: "Email",
                  ),
                  SizedBox(height: 40.0),
                  TextFormWidget(
                    controller: password,
                    obscureText: true,
                    labelText: "Enter Password",
                    hintText: "Password",
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  // TextFormWidget(
                  //   obscureText: true,
                  //   labelText: "Enter firstname",
                  //   hintText: "Firstname",
                  // ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        validation();
                      },
                      child: Text("login"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
