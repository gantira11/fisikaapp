// ignore_for_file: prefer_const_constructors

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/module/uji_kompetensi/soal_uji_kompetensi/uji_kompetensi.dart';
import 'package:fisikaapp/utils/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UjiKompetensiScreen extends StatelessWidget {
  static const routename = "/uji-kompetensi";
  const UjiKompetensiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Uji Kompetensi"),
            flexibleSpace: SvgPicture.asset(
              "assets/images/Group 2.svg",
              fit: BoxFit.fitWidth,
            ),
          ),
          drawer: CustomDrawer(),
          body: UjiKompetensiWidget()),
    );
  }
}

class UjiKompetensiWidget extends StatefulWidget {
  const UjiKompetensiWidget({Key? key}) : super(key: key);

  @override
  _UjiKompetensiWidgetState createState() => _UjiKompetensiWidgetState();
}

class _UjiKompetensiWidgetState extends State<UjiKompetensiWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.only(
                right: 20.0, left: 20.0, top: 20.0, bottom: 40),
            child: Text(
              "Siap Untuk Uji\nKompetensi?",
              style:
                  TextStyle(fontSize: 45, color: CustomColors.darkBlueCustom),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, UjiKompetensiPertama.routename);
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
                        "Mulai",
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
        ]))
      ],
    );
  }
}
