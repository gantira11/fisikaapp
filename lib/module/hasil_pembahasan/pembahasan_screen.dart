// ignore_for_file: prefer_const_constructors

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/common/etc.dart';
import 'package:fisikaapp/module/dashboard/dashboard_screen.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan.dart';
import 'package:fisikaapp/module/uji_kemampuan/uji_kemampuan_1/soal_uji1.dart';
import 'package:fisikaapp/utils/custom_drawer.dart';
import 'package:fisikaapp/utils/custom_question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tex/flutter_tex.dart';

class PembahasanScreen extends StatefulWidget {
  final List<Quiz> quizList;
  final List<String> jawab;
  final String headTitle;
  final String navTitle;

  PembahasanScreen({
    Key? key,
    required this.quizList,
    required this.jawab,
    required this.headTitle,
    required this.navTitle,
  }) : super(key: key);

  @override
  State<PembahasanScreen> createState() => _PembahasanScreenState();
}

class _PembahasanScreenState extends State<PembahasanScreen> {
  int currentQuizIndex = 0;
  bool showPembahasan = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(true);
      },
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(widget.navTitle),
              flexibleSpace: SvgPicture.asset(
                "assets/images/Group 2.svg",
                fit: BoxFit.fitWidth,
              ),
            ),
            drawer: CustomDrawer(),
            body: CustomScrollView(
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20.0, left: 20.0, top: 20.0, bottom: 10),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child:
                              SvgPicture.asset("assets/images/Icon-pencil.svg"),
                          //decoration: BoxDecoration(border: Border.all()),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Text(
                            'Pembahasan ' + widget.headTitle,
                            style: TextStyle(
                              fontSize: 30,
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
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Container(
                      color: CustomColors.darkBlueCustom,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("soal no ${currentQuizIndex + 1}"),
                        SizedBox(
                          height: 20,
                        ),
                        TeXView(
                          renderingEngine: TeXViewRenderingEngine.mathjax(),

                          // loadingWidgetBuilder: (BuildContext context) =>
                          //     SizedBox(
                          //   height: MediaQuery.of(context).size.width * 0.8,
                          //   child: Center(child: CircularProgressIndicator()),
                          // ),
                          fonts: const [
                            TeXViewFont(
                                fontFamily: 'roboto',
                                src: 'assets/font/Roboto-Black.ttf')
                          ],
                          // renderingEngine: widget.renderingEngine,
                          child: TeXViewColumn(
                            children: [
                              TeXViewImage.asset(widget
                                          .quizList[currentQuizIndex].imgName !=
                                      ""
                                  ? widget.quizList[currentQuizIndex].imgName
                                  : "assets/blank.png"),
                              TeXViewDocument(
                                widget.quizList[currentQuizIndex].statement,
                                style: TeXViewStyle(
                                    fontStyle:
                                        TeXViewFontStyle(fontFamily: "roboto"),
                                    textAlign: TeXViewTextAlign.justify),
                              ),
                              TeXViewGroup(
                                children: widget
                                    .quizList[currentQuizIndex].options
                                    .map((QuizOption option) {
                                  return TeXViewGroupItem(
                                      rippleEffect: false,
                                      id: option.id,
                                      child: TeXViewDocument(option.option,
                                          style: TeXViewStyle(
                                              backgroundColor: option.id ==
                                                      widget
                                                          .quizList[
                                                              currentQuizIndex]
                                                          .correctOptionId
                                                  ? Colors.greenAccent
                                                  : option.id ==
                                                          widget.jawab[
                                                              currentQuizIndex]
                                                      ? Colors.redAccent
                                                      : Colors.white,
                                              padding:
                                                  TeXViewPadding.all(10))));
                                }).toList(growable: false),
                                selectedItemStyle: TeXViewStyle(
                                    borderRadius:
                                        const TeXViewBorderRadius.all(10),
                                    border: TeXViewBorder.all(
                                        TeXViewBorderDecoration(
                                            borderWidth: 3,
                                            borderColor: Colors.green[900])),
                                    margin: const TeXViewMargin.all(10)),
                                normalItemStyle:
                                    TeXViewStyle(margin: TeXViewMargin.all(10)),
                                onTap: (id) {},
                              ),
                            ],
                          ),
                          style: TeXViewStyle(
                            margin: TeXViewMargin.all(5),
                            padding: TeXViewPadding.all(10),
                            borderRadius: TeXViewBorderRadius.all(10),
                            border: TeXViewBorder.all(
                              TeXViewBorderDecoration(
                                  borderColor: Colors.blue,
                                  borderStyle: TeXViewBorderStyle.solid,
                                  borderWidth: 5),
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jawaban Kamu: ' +
                                    widget.jawab[currentQuizIndex],
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                widget.quizList[currentQuizIndex]
                                            .correctOptionId ==
                                        widget.jawab[currentQuizIndex]
                                    ? "Benar"
                                    : "Salah",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: widget.quizList[currentQuizIndex]
                                                .correctOptionId ==
                                            widget.jawab[currentQuizIndex]
                                        ? Colors.blue
                                        : Colors.red),
                              )
                            ],
                          ),
                        ),
                        Visibility(
                          visible: showPembahasan,
                          child: TeXView(
                            renderingEngine: TeXViewRenderingEngine.mathjax(),
                            child: TeXViewDocument(
                                widget.quizList[currentQuizIndex].pembahasan),
                            style: TeXViewStyle(
                              margin: TeXViewMargin.all(5),
                              padding: TeXViewPadding.all(10),
                              borderRadius: TeXViewBorderRadius.all(10),
                              border: TeXViewBorder.all(
                                TeXViewBorderDecoration(
                                    borderColor: Colors.blue,
                                    borderStyle: TeXViewBorderStyle.solid,
                                    borderWidth: 5),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (showPembahasan == false) {
                                      showPembahasan = true;
                                    } else {
                                      showPembahasan = false;
                                    }
                                  });
                                },
                                child: Text(showPembahasan == false
                                    ? "Lihat Pembahasan"
                                    : "Hide"),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (currentQuizIndex > 0) {
                                    currentQuizIndex--;
                                  }
                                  setState(() {
                                    showPembahasan = false;
                                  });
                                },
                                child: const Text("Sebelumnya"),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                ),
                                onPressed: (() {
                                  setState(() {
                                    showPembahasan = false;
                                  });
                                  if (currentQuizIndex ==
                                      widget.jawab.length - 1) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DashBoardScreen()));
                                  } else if (currentQuizIndex !=
                                      widget.quizList.length - 1) {
                                    currentQuizIndex++;
                                  } else {
                                    print("haha");
                                  }
                                }),
                                child: Text(
                                    currentQuizIndex == widget.jawab.length - 1
                                        ? "Halaman Utama"
                                        : "Berikutnya"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]))
              ],
            )),
      ),
    );
  }
}
