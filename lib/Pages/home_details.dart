// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce_app/Widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:e_commerce_app/Models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catelog;
  const HomeDetailPage({
    Key? key,
    required this.catelog,
  })  : assert(catelog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catelog.price}"
                  .text
                  .bold
                  .xl4
                  .color(context.accentColor)
                  .make(),
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(context.accentColor),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "Add to cart".text.make())
                  .wh(120, 50)
            ],
          ).pOnly(right: 8).p32(),
        ),
        body: Column(
          children: [
            Hero(
                    tag: Key(catelog.id.toString()),
                    child: Image.network(catelog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(children: [
                  catelog.name.text.xl.color(context.accentColor).bold.make(),
                  catelog.desc.text
                      .textStyle(context.captionStyle)
                      .color(context.accentColor)
                      .xl
                      .make(),
                  10.heightBox,
                  "App Tracking Transparency lets you decide which apps are allowed to track your activity — it’s just one example of how iPhone is designed to put you in control of what you share and who you share it with"
                      .text
                      .textStyle(context.captionStyle)
                      .color(context.accentColor)
                      .make()
                      .p16()
                ]).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
