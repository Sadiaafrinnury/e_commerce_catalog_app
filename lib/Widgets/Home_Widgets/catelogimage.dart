import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Widgets/themes.dart';

class CatelogImage extends StatelessWidget {
  final String image;
  const CatelogImage({
    Key? key,
    required this.image,
  })  : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(context.canvasColor).make().p16().wh40(context);
  }
}
