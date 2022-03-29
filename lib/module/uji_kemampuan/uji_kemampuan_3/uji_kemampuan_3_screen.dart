import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan_2/soal_uji2.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan_3/soal_uji3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/custom_drawer.dart';

class UjiKemampuan3 extends StatelessWidget {
  static const routename = "/uji-kemampuan/3/";
  const UjiKemampuan3({Key? key}) : super(key: key);

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
          body: const SoalUjiKetiga(),
        ),
      ),
    );
  }
}
