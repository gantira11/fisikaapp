// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/module/materi/materi_screen.dart';
import 'package:fisikaapp/module/panduan/panduan_screen.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan.dart';
import 'package:fisikaapp/module/uji_kompetensi/uji_kompetensi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardScreen extends StatelessWidget {
  static const routename = "/dashboard";

  DashBoardScreen({Key? key}) : super(key: key);
  String assetsName = "assets/images/Group 1.svg";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Selamat Datang!",
            style: TextStyle(fontSize: 30),
          ),
          flexibleSpace: SvgPicture.asset(
            assetsName,
            fit: BoxFit.fill,
          ),
          toolbarHeight: 280,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                // materi button (tombol materi)
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, MateriScreen.routename);
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
                            child: SvgPicture.asset("assets/images/books.svg"),
                            //decoration: BoxDecoration(border: Border.all()),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Materi",
                            style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = CustomColors.blueCustom,
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
                        context, UjiKemampuanScreen.routename);
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
                            child: SvgPicture.asset(
                                "assets/images/Icon-pencil.svg"),
                            //decoration: BoxDecoration(border: Border.all()),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Uji Kemampuan",
                            style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = CustomColors.blueCustom,
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
                        context, UjiKompetensiScreen.routename);
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
                            child: SvgPicture.asset(
                                "assets/images/Icon-paste-plain-text-rtl.svg"),
                            //decoration: BoxDecoration(border: Border.all()),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Uji Kompetensi",
                            style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = CustomColors.blueCustom,
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
                        context, PanduanScreen.routename);
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
                            child: SvgPicture.asset(
                                "assets/images/Icon-search.svg"),
                            //decoration: BoxDecoration(border: Border.all()),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Panduan",
                            style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = CustomColors.blueCustom,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
