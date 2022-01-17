// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: use_key_in_widget_constructors
class CartPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:"Cart".text.make(),
      ),

      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],),
      
    );
  }
}

class _CartTotal extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        // ignore: deprecated_member_use
        "\$9999".text.xl5.color(context.theme.accentColor).make(),
        30.widthBox,
        ElevatedButton(
          onPressed: (){},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)
          ),
          
          child: "Buy".text.white.make(),
        ).w32(context)
      ],)
    );
  }
}

class _CartList extends StatefulWidget {

  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context,index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(icon: Icon(Icons.remove_circle_outline),
           onPressed: () {},
        ),
        title:"Item 1".text.make() ,
      ),
    );
  }
}