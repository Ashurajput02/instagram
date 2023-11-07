import 'package:bestappever/mainpage.dart';
import 'package:bestappever/pages/homepage.dart';
import 'package:bestappever/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme:ThemeData(
        fontFamily: 'Urbanist',),
        initialRoute:'/mainpage'
        ,routes:{
        '/':(context) =>loginpage(),
      '/loginpage':(context) =>loginpage(),
      '/home':(context) =>homepage(),
      '/mainpage':(context) =>mainpage(),
      }
    );
  }

}
