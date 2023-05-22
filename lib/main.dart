

import 'package:flutter/material.dart';
import 'package:flutter_new_start/pages/home_page.dart';
import 'package:flutter_new_start/pages/login_page.dart';

void main(){
  runApp(MaterialApp(
    title: "Again App",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.cyan
    ),
    routes: {
      "/login" : (context) => LoginPage(),
      "/Home" : (context) => MyHomePage()
    },
  ));
}



