// ignore_for_file: prefer_const_constructors

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/module/materi/materi_screen.dart';
import 'package:fisikaapp/utils/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KonsepFotonScreen extends StatelessWidget {
  static const routename = "/materi/konsep-foton";
  const KonsepFotonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacementNamed(context, MateriScreen.routename);
        return Future.value(false);
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Materi"),
            flexibleSpace: SvgPicture.asset(
              "assets/images/Group 2.svg",
              fit: BoxFit.fitWidth,
            ),
          ),
          drawer: CustomDrawer(),
          body: _KonsepFotonWidget(),
        ),
      ),
    );
  }
}

class _KonsepFotonWidget extends StatefulWidget {
  const _KonsepFotonWidget({Key? key}) : super(key: key);

  @override
  __KonsepFotonWidgetState createState() => __KonsepFotonWidgetState();
}

class __KonsepFotonWidgetState extends State<_KonsepFotonWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.only(
                    right: 20.0, left: 20.0, top: 20.0, bottom: 10),
                child: Text(
                  "Konsep Foton",
                  style: TextStyle(
                      fontSize: 36, color: CustomColors.darkBlueCustom),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/konsepfoton/1.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset("assets/materi/konsepfoton/2.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/konsepfoton/3.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 1.2,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/konsepfoton/4.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset("assets/materi/konsepfoton/5.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 1.5,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/konsepfoton/6.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset("assets/materi/konsepfoton/7.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/konsepfoton/8.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    "assets/materi/konsepfoton/9.png",
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 1.2,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/konsepfoton/10.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child:
                      Image.asset("assets/materi/konsepfoton/new_foton1.jpeg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/konsepfoton/12.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.5,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child:
                      Image.asset("assets/materi/konsepfoton/new_foton3.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child:
                      Image.asset("assets/materi/konsepfoton/new_foton2.jpeg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/konsepfoton/14.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset("assets/materi/konsepfoton/15.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
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
                            child: Icon(
                              Icons.arrow_back_outlined,
                              size: 30,
                              color: CustomColors.darkBlueCustom,
                            ),
                            //decoration: BoxDecoration(border: Border.all()),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Flexible(
                            child: Text(
                              "Kembali",
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
              SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }
}
