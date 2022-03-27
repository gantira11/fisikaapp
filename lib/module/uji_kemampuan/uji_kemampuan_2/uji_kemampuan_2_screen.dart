import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan_2/soal_uji2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/custom_drawer.dart';
import '../uji_kemampuan_1/soal_uji1.dart';

class UjiKemampuan2 extends StatelessWidget {
  static const routename = "/uji-kemampuan/2/";
  const UjiKemampuan2({Key? key}) : super(key: key);

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
            title: const Text("Uji Kemampuan"),
            flexibleSpace: SvgPicture.asset(
              "assets/images/Group 2.svg",
              fit: BoxFit.fitWidth,
            ),
          ),
          drawer: const CustomDrawer(),
          body: const SoalUjiKedua(),
        ),
      ),
    );
  }
}
