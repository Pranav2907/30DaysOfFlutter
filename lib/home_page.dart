// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class  Homepage extends  StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  final int days = 30;
   final String name = "Pranav";
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
         appBar: AppBar(
           title: Text("Catalog App"),
         ),
         body: Center(
           // ignore: avoid_unnecessary_containers
           child:Container(
             child: Text("Welcome to $days days of flutter by $name"),
           ),
         ),
         drawer:Drawer()
       );
  }
}