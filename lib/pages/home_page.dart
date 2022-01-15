// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'dart:convert';

class  HomePage extends  StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  void initState() {
    
    super.initState();
    loadData();
  }

   loadData() async {
     
        final catalogJson = await  rootBundle.loadString("assets/files/catalog.json");
        final decodedData = jsonDecode(catalogJson);
        var productsData = decodedData["products"];
        CatalogModel.items = List.from(productsData).map<Item>((item) =>Item.fromMap(item) ).toList();
        setState(() {
          
        });
        
   }
  

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
         body:SafeArea(
           child: Container(
             padding: Vx.m32,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                    CatalogHeader(),
                    CatalogList().expand(),
               ],
               ),
           ),
         ),
       );
  }
}

// ignore: use_key_in_widget_constructors
class CatalogHeader extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                "Catalog App" .text.xl5.bold.color(MyTheme.darkBluishColor).make(),
                "Trending products".text.xl2.make()
              ],
    );
  }
}

// ignore: use_key_in_widget_constructors
class CatalogList extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index)  {
          final catalog =CatalogModel.items[index];
          return CatalogItem(catalog : catalog);
      },
    );
  }
}

// ignore: use_key_in_widget_constructors
class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child:Row(
        children: [
           CatalogImage(image: catalog.image),
           Expanded(child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
               catalog.desc.text.make(),
               10.heightBox,
               ButtonBar(
                 alignment: MainAxisAlignment.spaceBetween,
                 buttonPadding: EdgeInsets.zero,
                 children: [
                   "\$${catalog.price}".text.bold.xl.make(),
                   ElevatedButton(onPressed:() {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())
                    ),
                    child: "Buy".text.make())
                 ],
               ),pOnly(right:8.0)
             ],
           ))
        ],
        )
    ).white.rounded.square(150).make().py16();
  }
}

// ignore: use_key_in_widget_constructors
class CatalogImage extends StatelessWidget {
final String image;

  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
             image,
             ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
      
    
  }
}