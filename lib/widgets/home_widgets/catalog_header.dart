import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';

// ignore: use_key_in_widget_constructors
class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}
