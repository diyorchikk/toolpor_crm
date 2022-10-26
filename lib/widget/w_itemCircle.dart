import 'package:flutter/material.dart';
import 'package:toolpor_crm/presentation/ui/resources/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WItemCircle extends StatelessWidget {
  final String urlCircle;
  final double width;
  final double height;
  const WItemCircle({Key? key,required this.urlCircle, this.width=36,this.height=36,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 14),
      margin: EdgeInsets.symmetric(horizontal: 22,vertical: 20),
      decoration:
      BoxDecoration(color: MyColors.orange, shape: BoxShape.circle),
      child: SvgPicture.asset(urlCircle),
    );
  }
}
