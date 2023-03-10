import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Widgets/themes.dart';
import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App"
            .text
            .xl5
            .bold
            .color(context.theme.colorScheme.secondary)
            .make(),
        "Trending Products"
            .text
            .xl2
            .color(context.theme.colorScheme.secondary)
            .make(),
      ],
    );
  }
}
