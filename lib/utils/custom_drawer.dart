// ignore_for_file: prefer_const_constructors

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/module/materi/materi_screen.dart';
import 'package:fisikaapp/module/panduan/panduan_screen.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan.dart';
import 'package:fisikaapp/module/uji_kompetensi/uji_kompetensi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[700],
              ),
              child: Text("Drawer Header")),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, MateriScreen.routename);
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
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
                      child: SvgPicture.asset("assets/images/Icon-pencil.svg"),
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
              Navigator.pushReplacementNamed(context, PanduanScreen.routename);
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
                      child: SvgPicture.asset("assets/images/Icon-search.svg"),
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
        ],
      ),
    );
  }
}

class HeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => 264;

  @override
  double get minExtent => 84;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      height: 75,
      width: MediaQuery.of(context).size.width * 1,
    );
  }
}
