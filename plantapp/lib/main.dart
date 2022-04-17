import 'package:flutter/material.dart';
import 'package:plantapp/screens/home_page.dart';

void main(){
  runApp(Myapp());
} 
class Myapp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor:Color(0xff67864A)),
      home: Homepage(),
    );
  }
}