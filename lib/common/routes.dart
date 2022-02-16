// ignore_for_file: prefer_const_constructors

import 'package:fisikaapp/module/dashboard/dashboard_screen.dart';
import 'package:fisikaapp/module/materi/efek_fotolistrik/efek_fotolistrik_screen.dart';
import 'package:fisikaapp/module/materi/materi_konsep_foton/konsep_foton_screen.dart';
import 'package:fisikaapp/module/materi/materi_screen.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan.dart';
import 'package:fisikaapp/module/uji_kompetensi/uji_kompetensi_screen.dart';
import 'package:flutter/material.dart';

Route? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case MateriScreen.routename:
      return MaterialPageRoute(builder: (_) => MateriScreen());
    case UjiKemampuanScreen.routename:
      return MaterialPageRoute(builder: (_) => UjiKemampuanScreen());
    case UjiKompetensiScreen.routename:
      return MaterialPageRoute(builder: (_) => UjiKompetensiScreen());
    case KonsepFotonScreen.routename:
      return MaterialPageRoute(builder: (_) => KonsepFotonScreen());
    case EfekFotoListrikScreen.routename:
      return MaterialPageRoute(builder: (_) => EfekFotoListrikScreen());
    default:
      return MaterialPageRoute(builder: (_) => DashBoardScreen());
  }
}
