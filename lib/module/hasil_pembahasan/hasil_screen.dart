import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/common/etc.dart';
import 'package:fisikaapp/module/dashboard/dashboard_screen.dart';
import 'package:fisikaapp/module/hasil_pembahasan/pembahasan_screen.dart';
import 'package:fisikaapp/utils/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HasilScreen extends StatelessWidget {
  static const routename = '/hasil_kemampuan';

  final List<Quiz> quizList;
  final List<String> jawab;
  final int nilai;
  final String headTitle;
  final String navTitle;

  HasilScreen({
    Key? key,
    required this.nilai,
    required this.jawab,
    required this.quizList,
    required this.headTitle,
    required this.navTitle,
  }) : super(key: key);

  int nilaiAkhir = 0;

  @override
  Widget build(BuildContext context) {
    print(jawab.length);
    return Scaffold(
      appBar: AppBar(
        title: Text(navTitle),
        flexibleSpace: SvgPicture.asset(
          "assets/images/Group 2.svg",
          fit: BoxFit.fitWidth,
        ),
      ),
      drawer: CustomDrawer(),
      body: Align(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  nilaiAkhir < 60 ? "Yuk belajar lebih giat lagi!" : "Selamat!",
                  style: TextStyle(
                    fontSize: 36,
                    color: CustomColors.darkBlueCustom,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Text(
                jawab.length > 5 ? '${nilai * 10}' : '${nilai * 20}',
                style: TextStyle(
                  fontSize: 100,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = CustomColors.blueCustom,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PembahasanScreen(
                          jawab: jawab,
                          quizList: quizList,
                          headTitle: headTitle,
                          navTitle: navTitle,
                        ),
                      ),
                    );
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
                          Flexible(
                            child: Text(
                              "Lihat Pembahasan",
                              style: TextStyle(
                                fontSize: 20,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 2
                                  ..color = CustomColors.blueCustom,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashBoardScreen()));
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
                          Flexible(
                            child: Text(
                              "Halaman Utama",
                              style: TextStyle(
                                fontSize: 20,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 2
                                  ..color = CustomColors.blueCustom,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
