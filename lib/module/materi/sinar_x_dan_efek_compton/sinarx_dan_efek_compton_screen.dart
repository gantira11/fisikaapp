// ignore_for_file: prefer_const_constructors

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/module/materi/materi_screen.dart';
import 'package:fisikaapp/utils/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SinarXEfekComptonScreen extends StatelessWidget {
  static const routename = "/materi/sinarx";
  const SinarXEfekComptonScreen({Key? key}) : super(key: key);

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
          body: _SinarXComptonWidget(),
        ),
      ),
    );
  }
}

class _SinarXComptonWidget extends StatefulWidget {
  const _SinarXComptonWidget({Key? key}) : super(key: key);

  @override
  __SinarXComptonWidgetState createState() => __SinarXComptonWidgetState();
}

class __SinarXComptonWidgetState extends State<_SinarXComptonWidget> {
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
                  "Sinar X dan\nEfek Compton",
                  style: TextStyle(
                      fontSize: 36, color: CustomColors.darkBlueCustom),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/1.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Image.asset(
                    "assets/materi/sinarx/2.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/3.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.9,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    "assets/materi/sinarx/4.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 1.2,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/5.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.7,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    "assets/materi/sinarx/6.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/7.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    "assets/materi/sinarx/8.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/9.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 2,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    "assets/materi/sinarx/10.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/11.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    "assets/materi/sinarx/12.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/13.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    "assets/materi/sinarx/14.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/15.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Image.asset(
                    "assets/materi/sinarx/16.jpg",
                    width: 50,
                    height: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/17.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset(
                    "assets/materi/sinarx/18.jpg",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/19.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    "assets/materi/sinarx/20.jpg",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/21.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    "assets/materi/sinarx/22.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.2,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset("assets/materi/sinarx/23.svg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 40),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset(
                    "assets/materi/sinarx/24.jpg",
                  ),
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
