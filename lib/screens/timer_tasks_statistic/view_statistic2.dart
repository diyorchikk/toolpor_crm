import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toolpor_crm/widget/bottom_navigation_bar.dart';
import 'package:toolpor_crm/widget/w_text.dart';
import 'package:toolpor_crm/color/colors.dart';

import '../../widget/w_svg_pictures.dart';

class Home11 extends StatefulWidget {
  const Home11({Key? key}) : super(key: key);

  @override
  State<Home11> createState() => _Home11State();
}

class _Home11State extends State<Home11> {
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
                  WTextStyle(
                      text: "Pomodoro timer",
                      textSize: 20,
                      textWeight: FontWeight.w600,
                      textHeight: 20,
                      color: Colors.black),
                  IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
                ],
              ),
              SizedBox(
                height: height / 15,
              ),
              WSvgPicture(
                width: width / 1.2,
                height: height / 2.5,
                orl: "assets/image/svg_image/taskImage.svg",
              ),
              SizedBox(
                height: height / 18,
              ),
              WTextStyle(
                  color: MyColors.white,
                  text: "Bost your productivity",
                  textSize: 27,
                  textWeight: FontWeight.w500,
                  textHeight: height / 30.4),
              SizedBox(
                height: height / 50,
              ),
              WTextStyle(
                  color: MyColors.white,
                  text: "Pomodoro techinque allows you to work",
                  textSize: 14,
                  textWeight: FontWeight.w400,
                  textHeight: height / 38),
              SizedBox(
                height: height / 110,
              ),
              WTextStyle(
                  color: MyColors.white,
                  text: "for a long time without feeling tried",
                  textSize: 14,
                  textWeight: FontWeight.w400,
                  textHeight: height / 38),
              SizedBox(
                height: height / 40,
              ),
              WButton(
                  textColor: Colors.black,
                  height: height / 14,
                  width: width / 1.2,
                  buttonColor: MyColors.white,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) => const Home2()),
                    );
                  },
                  borderWidth: 0,
                  text: "Get started",
                  textSize: 16,
                  textWeight: FontWeight.w500,
                  textHeight: height / 38),
            ],
          ),
        ),
      ),
      bottomNavigationBar: WBottomBar(),
    );
  }
}
