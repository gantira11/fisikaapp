// ignore_for_file: prefer_const_constructors

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan_1/soal_uji1.dart';
import 'package:fisikaapp/module/uji_kompetensi/soal_uji_kompetensi/soal_kompetensi.dart';
import 'package:fisikaapp/module/uji_kompetensi/uji_kompetensi_screen.dart';
import 'package:fisikaapp/utils/custom_drawer.dart';
import 'package:fisikaapp/utils/custom_question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UjiKompetensiPertama extends StatelessWidget {
  static const routename = "/ujiKompetensi";
  const UjiKompetensiPertama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacementNamed(context, UjiKompetensiScreen.routename);
        return Future.value(false);
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Uji Kompetensi"),
            flexibleSpace: SvgPicture.asset(
              "assets/images/Group 2.svg",
              fit: BoxFit.fitWidth,
            ),
          ),
          drawer: CustomDrawer(),
          body: SoalKompetensi(),
        ),
      ),
    );
  }
}
