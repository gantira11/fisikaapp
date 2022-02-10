// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/utils/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MateriScreen extends StatelessWidget {
  static const routename = "/materi";
  MateriScreen({Key? key}) : super(key: key);

  String assetsName = "assets/images/Group 2.svg";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Materi"),
          flexibleSpace: SvgPicture.asset(
            assetsName,
            fit: BoxFit.fitWidth,
          ),
        ),
        drawer: CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 20.0, top: 20.0, bottom: 40),
                  child: Text(
                    "Ingin belajar apa hari ini?",
                    style: TextStyle(
                        fontSize: 36, color: CustomColors.darkBlueCustom),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ]),
                    child: ListTile(
                      title: Row(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child:
                                SvgPicture.asset("assets/images/Icon-sun.svg"),
                            //decoration: BoxDecoration(border: Border.all()),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Flexible(
                            child: Text(
                              "Konsep Foton",
                              style: TextStyle(
                                fontSize: 20,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = CustomColors.blueCustom,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ]),
                    child: ListTile(
                      title: Row(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child:
                                SvgPicture.asset("assets/images/Icon-bolt.svg"),
                            //decoration: BoxDecoration(border: Border.all()),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Flexible(
                            child: Text(
                              "Efek Foto listrik",
                              style: TextStyle(
                                fontSize: 20,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = CustomColors.blueCustom,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ]),
                    child: ListTile(
                      title: Row(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: SvgPicture.asset(
                                "assets/images/Icon-propagation.svg"),
                            //decoration: BoxDecoration(border: Border.all()),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Flexible(
                            child: Text(
                              "Sinar X & Efek Compton",
                              style: TextStyle(
                                fontSize: 20,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = CustomColors.blueCustom,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
