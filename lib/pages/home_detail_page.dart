// ignore_for_file: prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_const_constructors, deprecated_member_use

import "package:flutter/material.dart";
import 'package:flutter_catalog/models/catalog.dart';
import "package:velocity_x/velocity_x.dart";

// ignore: use_key_in_widget_constructors
class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: duplicate_ignore
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar:  Container(
        color:context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    context.theme.buttonColor,
                  ),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
              child: "Add to Cart".text.make(),
            ).wh(120,50)
          ],
        ).p32(),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
           Hero(
             tag: Key(catalog.id.toString()),
             child: Image.network(catalog.image)
             ).h32(context),
             Expanded(child: VxArc(
               height:30.0,
               arcType: VxArcType.CONVEY,
               edge: VxEdge.TOP, 
               child: Container(
                 color: context.cardColor,
                 width:context.screenWidth,
                 child:SingleChildScrollView(
                   child: Column(
                     children: [
                      catalog.name.text.xl4
                              .color(context.accentColor)
                              .bold
                              .make(),
                          catalog.desc.text.xl.make(),
                          10.heightBox,
                          "Rebum et invidunt no et no sadipscing lorem est et dolores, diam at dolores at sea dolores sea. Eos eos.".text.make().p16()
                   ],).py(64),
                 )
                 
                 ),
             )
               ,)
        ],
        ),
      ),
    );
  }
}