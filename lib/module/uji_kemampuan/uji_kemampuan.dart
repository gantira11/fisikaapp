// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan_1/uji_kemampuan_1_screen.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan_2/uji_kemampuan_2_screen.dart';
import 'package:fisikaapp/utils/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UjiKemampuanScreen extends StatelessWidget {
  static const routename = "/uji-kemampuan";
  const UjiKemampuanScreen({Key? key}) : super(key: key);
  static const String assetsName = "assets/images/Group 2.svg";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Uji Kemampuan"),
          flexibleSpace: SvgPicture.asset(
            assetsName,
            fit: BoxFit.fitWidth,
          ),
        ),
        drawer: CustomDrawer(),
        body: UjiKemampuanWidget(),
      ),
    );
  }
}

class UjiKemampuanWidget extends StatefulWidget {
  const UjiKemampuanWidget({Key? key}) : super(key: key);

  @override
  _UjiKemampuanWidgetState createState() => _UjiKemampuanWidgetState();
}

class _UjiKemampuanWidgetState extends State<UjiKemampuanWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(
                  right: 20.0, left: 20.0, top: 20.0, bottom: 40),
              child: Text(
                "Ayo\nTes Pemahaman!",
                style:
                    TextStyle(fontSize: 40, color: CustomColors.darkBlueCustom),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, KemampuanSoalPertama.routename);
              },
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
                        child: SvgPicture.asset("assets/images/Icon-page.svg"),
                        //decoration: BoxDecoration(border: Border.all()),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Flexible(
                        child: Text(
                          "Uji Kemampuan 1",
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
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, UjiKemampuan2.routename);
              },
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
                        child: SvgPicture.asset("assets/images/Icon-page.svg"),
                        //decoration: BoxDecoration(border: Border.all()),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Flexible(
                        child: Text(
                          "Uji Kemampuan 2",
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
                        child: SvgPicture.asset("assets/images/Icon-page.svg"),
                        //decoration: BoxDecoration(border: Border.all()),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Flexible(
                        child: Text(
                          "Uji Kemampuan 3",
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
    );
  }
}
