import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toolpor_crm/screens/home_page1.dart';
import 'package:toolpor_crm/widget/bottom_navigation_bar.dart';
import 'package:toolpor_crm/widget/w_button.dart';
import 'package:toolpor_crm/widget/w_text.dart';
import 'package:toolpor_crm/color/colors.dart';

import '../../widget/w_svg_pictures.dart';
import '../../widget/w_timer_statistic.dart';

class Home12 extends StatefulWidget {
  const Home12({Key? key}) : super(key: key);

  @override
  State<Home12> createState() => _Home12State();
}

class _Home12State extends State<Home12> {
  double width = 0;

  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print(width);
    print(height);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(height / 60),
          child: Column(
            children: [
              SizedBox(
                height: height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever_outlined)),
                ],
              ),
              SizedBox(
                height: height / 50,
              ),
              Container(
                width: width / 5,
                height: height / 11,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: MyColors.green,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/image/svg_image/Reading icon.svg",
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 60,
              ),
              WTextStyle(
                  color: MyColors.black,
                  text: "UX articles reading",
                  textSize: 18,
                  textWeight: FontWeight.w500,
                  textHeight: height / 38),
              SizedBox(
                height: height / 70,
              ),
              WTextStyle(
                  color: MyColors.black,
                  text: "Today,10:30 am",
                  textSize: 14,
                  textWeight: FontWeight.w300,
                  textHeight: height / 38),
              SizedBox(
                height: height / 40,
              ),
              WStatistic(),
              SizedBox(
                height: height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WTextStyle(
                      color: MyColors.black,
                      text: "Productivity",
                      textSize: 18,
                      textWeight: FontWeight.w400,
                      textHeight: height / 38),
                ],
              ),
              SizedBox(
                height: height / 7,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: WBottomBar(),
    );
  }
}
