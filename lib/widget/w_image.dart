import 'package:flutter/material.dart';

class WpProfileImage extends StatelessWidget {
  final String url;
  final double width;
  final double height ;
  final BoxShape boxShape;
  final double BorderRadius;

  const WpProfileImage(
      {
        Key? key,
        required this.url,
        required this.width,
        required this.height,
        required this.boxShape,
        required this.BorderRadius,

      }
      ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration:
      BoxDecoration(
           shape: boxShape,
          borderRadius: BorderRadius.all(Radius.circular(BorderRadius)),
          image: DecorationImage(
            image: AssetImage(url),
            fit: BoxFit.fill,
          )
      ),
    );
  }
}
