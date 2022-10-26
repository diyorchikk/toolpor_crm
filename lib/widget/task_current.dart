import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toolpor_crm/color/colors.dart';
import 'package:toolpor_crm/widget/w_button.dart';
import 'package:toolpor_crm/screens/home_page1.dart';
import 'package:toolpor_crm/widget/w_image.dart';
import 'package:toolpor_crm/widget/bottom_navigation_bar.dart';
import 'package:toolpor_crm/widget/w_svg_pictures.dart';


class TaskCurrent extends StatefulWidget {
  final String url;
  final String urlIcon;
  final String text1;
  final String text2;
  final Color ColorCont1;
  final Color ColorCont2;
  const TaskCurrent({Key? key, required this.url,required this.urlIcon,required this.text1,required this.text2,required this.ColorCont1,required this.ColorCont2}) : super(key: key);

  @override
  State<TaskCurrent> createState() => _TaskCurrentState();
}

class _TaskCurrentState extends State<TaskCurrent> {
  double width = 0;

  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print(width);
    print(height);
    return  Container(
      width: double.infinity,
      height: height / 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(width: 1),
        color: Colors.white
      ),
      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                          Row(
                            children: [
                              Container(
                                width: width / 7.2,
                                height:height / 15.2,
                                decoration: BoxDecoration(
                                  color: widget.ColorCont1,
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      widget.url,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: width / 30),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                     // SizedBox(height: height / 50),
                                  Text(widget.text1 ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                                  Text(widget.text2,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ],
                          ),
                      Container(
                        height: height / 16,
                        width: width / 7,
                        decoration: BoxDecoration(
                          color: widget.ColorCont1,
                          shape: BoxShape.circle
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          SvgPicture.asset(
                              widget.urlIcon,
                            height: 20,
                          ),
                        ],)
                      )
                    ],
                  ),
    );
  }
}
