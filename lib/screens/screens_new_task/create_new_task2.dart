import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toolpor_crm/color/colors.dart';
import 'package:toolpor_crm/screens/timer_tasks_statistic/timer_statitic1.dart';
import 'package:toolpor_crm/widget/w_text.dart';
import 'package:toolpor_crm/widget/select_cotegory.dart';

class Home9 extends StatefulWidget {
  const Home9({Key? key}) : super(key: key);

  @override
  State<Home9> createState() => _Home9State();
}

class _Home9State extends State<Home9> {
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
                      text: "Create new task",
                      textSize: 20,
                      textWeight: FontWeight.w600,
                      textHeight: 20,
                      color: Colors.black),
                  IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                ],
              ),
              SizedBox(
                height: height / 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Task name",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: height / 50,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Reading the book",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(height / 70),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        SizedBox(
                          height: height / 60,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 10,
                              bottom: 5,
                              top: 5,
                              right: 10,
                            ),
                            width: 150,
                            height: 46,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/image/svg_image/kalendar.svg"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Start time",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        SizedBox(
                          height: height / 60,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(
                              bottom: 5,
                              top: 2,
                              right: 10,
                            ),
                            width: 150,
                            height: 46,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.watch_later,
                                      color: Colors.grey,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select cotegory",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              SelectCotegory(),
              SizedBox(
                height: height / 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Working session",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: height / 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Long break",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: height / 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Short break",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) => const Home10()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: height / 14,
                  decoration: BoxDecoration(
                    color: MyColors.disabled,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Center(
                      child: Text("Create new project",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
