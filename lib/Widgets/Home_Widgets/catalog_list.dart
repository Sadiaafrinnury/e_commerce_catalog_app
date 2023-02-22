// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:e_commerce_app/Models/cart.dart';
import 'package:e_commerce_app/Pages/home_details.dart';

import '../../Models/catalog.dart';
import 'catelogimage.dart';

class CatelogList extends StatelessWidget {
  const CatelogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final Catalog = CatelogModel.items[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetailPage(catelog: Catalog),
              ),
            ),
            child: CatelogItem(catelog: Catalog),
          );
        },
        itemCount: CatelogModel.items.length);
  }
}

class CatelogItem extends StatelessWidget {
  final Item catelog;
  const CatelogItem({
    Key? key,
    required this.catelog,
  })  : assert(catelog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catelog.id.toString()),
          child: CatelogImage(image: catelog.image)
              .box
              .rounded
              .p8
              .color(context.canvasColor)
              .make()
              .p16()
              .wh40(context),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catelog.name.text.lg.color(context.colors.secondary).bold.make(),
            catelog.desc.text
                .textStyle(context.captionStyle)
                .color(context.colors.secondary)
                .make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catelog.price}"
                    .text
                    .color(context.colors.secondary)
                    .bold
                    .xl
                    .make(),
                _AddToCart(catelog: catelog)
              ],
            ).pOnly(right: 8)
          ],
        )),
      ],
    )).color(context.cardColor).roundedLg.square(150).make().py16();
  }
}

class _AddToCart extends StatefulWidget {
  final Item catelog;
  const _AddToCart({
    Key? key,
    required this.catelog,
  }) : super(key: key);

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isinCart = _cart.items.contains(widget.catelog) ?? false;
    return ElevatedButton(
        onPressed: () {
          isinCart = isinCart.toggle();
          final _catelog = CatelogModel();

          _cart.catelog = _catelog;
          _cart.add(widget.catelog);
          setState(() {});
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.canvasColor),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child: !isinCart
            ? Icon(
                Icons.done,
                color: Colors.black,
              )
            : "Add to cart".text.color(context.accentColor).make());
  }
}
