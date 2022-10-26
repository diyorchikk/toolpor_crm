import 'package:flutter/material.dart';
import 'package:toolpor_crm/widget/bottom_navigation_bar.dart';
import 'package:toolpor_crm/widget/w_text.dart';
import '../../../color/colors.dart';
import '../../../widget/w_container_for_task.dart';

class Home15 extends StatefulWidget {
  const Home15({Key? key}) : super(key: key);

  @override
  State<Home15> createState() => _Home15State();
}

class _Home15State extends State<Home15> {
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
                      text: "History",
                      textSize: 20,
                      textWeight: FontWeight.w600,
                      textHeight: 20,
                      color: Colors.black),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              Column(
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WTextStyle(
                      text: "Today, 22 Nov",
                      textSize: 14,
                      textWeight: FontWeight.w400,
                      textHeight: 14,
                      color: Colors.black),
                ],
              ),
              SizedBox(
                height: height / 100,
              ),
              ContainerForTask(
                  color: MyColors.green,
                  textTaskName: "English lesson",
                  textTaskType: "Education",
                  textTaskStartTime: "1:30h",
                  textTaskTime: "10:30-2:30",
                  url: "assets/image/svg_image/Reading icon.svg"),
              SizedBox(
                height: height / 100,
              ),
              ContainerForTask(
                  color: MyColors.disabled,
                  textTaskName: "Guitar lesson",
                  textTaskType: "Music",
                  textTaskStartTime: "2:00h",
                  textTaskTime: "12:30-2:30",
                  url: "assets/image/svg_image/music (2).svg"),
              SizedBox(
                height: height / 100,
              ),
              ContainerForTask(
                  color: MyColors.darkBlue,
                  textTaskName: "Design Dashboard",
                  textTaskType: "work",
                  textTaskStartTime: "1:45h",
                  textTaskTime: "2:30-3:30",
                  url: "assets/image/svg_image/IT.svg"),
              SizedBox(
                height: height / 100,
              ),
              ContainerForTask(
                  color: MyColors.darkBlue,
                  textTaskName: "Relax music",
                  textTaskType: "meditation",
                  textTaskStartTime: "1:45h",
                  textTaskTime: "1:45-3:45",
                  url: "assets/image/svg_image/Meditation icon.svg"),
              ],),
              SizedBox(
                height: height / 50,
              ),
              Column(
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WTextStyle(
                      text: "Yesterday, 21 Nov",
                      textSize: 14,
                      textWeight: FontWeight.w400,
                      textHeight: 14,
                      color: Colors.black),
                ],
              ),
              SizedBox(
                height: height / 100,
              ),
              ContainerForTask(
                  color: MyColors.green,
                  textTaskName: "English lesson",
                  textTaskType: "Education",
                  textTaskStartTime: "1:30h",
                  textTaskTime: "10:30-2:30",
                  url: "assets/image/svg_image/Reading icon.svg"),
              SizedBox(
                height: height / 100,
              ),
              ContainerForTask(
                  color: MyColors.disabled,
                  textTaskName: "Guitar lesson",
                  textTaskType: "Music",
                  textTaskStartTime: "2:00h",
                  textTaskTime: "12:30-2:30",
                  url: "assets/image/svg_image/music (2).svg"),
              SizedBox(
                height: height / 100,
              ),
              ContainerForTask(
                  color: MyColors.darkBlue,
                  textTaskName: "Design Dashboard",
                  textTaskType: "work",
                  textTaskStartTime: "1:45h",
                  textTaskTime: "2:30-3:30",
                  url: "assets/image/svg_image/IT.svg"),
              SizedBox(
                height: height / 100,
              ),
              ContainerForTask(
                  color: MyColors.darkBlue,
                  textTaskName: "Relax music",
                  textTaskType: "meditation",
                  textTaskStartTime: "1:45h",
                  textTaskTime: "1:45-3:45",
                  url: "assets/image/svg_image/Meditation icon.svg"),
              ],),
            ],
          ),
        ),
      ),
      bottomNavigationBar: WBottomBar(),
    );
  }
}
