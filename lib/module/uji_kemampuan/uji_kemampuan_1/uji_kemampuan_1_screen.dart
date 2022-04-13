// ignore_for_file: prefer_const_constructors

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan_1/soal_uji1.dart';
import 'package:fisikaapp/utils/custom_drawer.dart';
import 'package:fisikaapp/utils/custom_question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KemampuanSoalPertama extends StatelessWidget {
  static const routename = "/uji-kemampuan/1/";
  const KemampuanSoalPertama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacementNamed(context, UjiKemampuanScreen.routename);
        return Future.value(false);
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Uji Kemampuan"),
            flexibleSpace: SvgPicture.asset(
              "assets/images/Group 2.svg",
              fit: BoxFit.fitWidth,
            ),
          ),
          drawer: CustomDrawer(),
          body: TextQuizOne(),
        ),
      ),
    );
  }
}
