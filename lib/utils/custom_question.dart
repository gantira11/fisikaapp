// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../common/colors.dart';

class CustomQuestionWidget extends StatefulWidget {
  final String soal,
      answerA,
      answerB,
      answerC,
      answerD,
      answerE,
      pembahasan,
      nomor;
  final bool correctA, correctB, correctC, correctD, correctE;

  const CustomQuestionWidget({
    Key? key,
    required this.soal,
    required this.answerA,
    required this.answerB,
    required this.answerC,
    required this.answerD,
    required this.answerE,
    this.correctA = false,
    this.correctB = false,
    this.correctC = false,
    this.correctD = false,
    this.correctE = false,
    this.pembahasan = '',
    required this.nomor,
  }) : super(key: key);

  @override
  _CustomQuestionWidgetState createState() => _CustomQuestionWidgetState();
}

class _CustomQuestionWidgetState extends State<CustomQuestionWidget> {
  bool statusAnswerA = false;
  bool statusAnswerB = false;
  bool statusAnswerC = false;
  bool statusAnswerD = false;
  bool statusAnswerE = false;
  bool visiblePembahasan = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text("Soal No ${widget.nomor}"),
        ListTile(
          title: TeXView(
            fonts: const [
              TeXViewFont(
                  fontFamily: 'roboto', src: 'assets/font/Roboto-Black.ttf')
            ],
            renderingEngine: TeXViewRenderingEngine.katex(),
            loadingWidgetBuilder: (_) => CircularProgressIndicator(),
            child: TeXViewDocument(widget.soal,
                style: TeXViewStyle(
                  padding: TeXViewPadding.all(0),
                  margin: TeXViewMargin.all(0),
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            setState(() {
              statusAnswerA = true;
              statusAnswerB = false;
              statusAnswerC = false;
              statusAnswerD = false;
              statusAnswerE = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: statusAnswerA
                    ? widget.correctA
                        ? Colors.green
                        : Colors.red[300]
                    : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ]),
            child: ListTile(
              title: TeXView(
                renderingEngine: TeXViewRenderingEngine.katex(),
                loadingWidgetBuilder: (_) => CircularProgressIndicator(),
                child: TeXViewDocument(widget.answerA),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(0),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            setState(() {
              statusAnswerA = false;
              statusAnswerB = true;
              statusAnswerC = false;
              statusAnswerD = false;
              statusAnswerE = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: statusAnswerB
                    ? widget.correctB
                        ? Colors.green
                        : Colors.red[300]
                    : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ]),
            child: ListTile(
              title: TeXView(
                renderingEngine: TeXViewRenderingEngine.katex(),
                loadingWidgetBuilder: (_) => CircularProgressIndicator(),
                child: TeXViewDocument(widget.answerB,
                    style: TeXViewStyle(
                      margin: TeXViewMargin.all(0),
                    )),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            setState(() {
              statusAnswerA = false;
              statusAnswerB = false;
              statusAnswerC = true;
              statusAnswerD = false;
              statusAnswerE = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: statusAnswerC
                    ? widget.correctC
                        ? Colors.green
                        : Colors.red[300]
                    : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ]),
            child: ListTile(
                title: TeXView(
              loadingWidgetBuilder: (_) =>
                  Center(child: CircularProgressIndicator()),
              renderingEngine: TeXViewRenderingEngine.katex(),
              child: TeXViewDocument(widget.answerC,
                  style: TeXViewStyle(
                    margin: TeXViewMargin.all(0),
                  )),
            )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            setState(() {
              statusAnswerA = false;
              statusAnswerB = false;
              statusAnswerC = false;
              statusAnswerD = true;
              statusAnswerE = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: statusAnswerD
                    ? widget.correctD
                        ? Colors.green
                        : Colors.red[300]
                    : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ]),
            child: ListTile(
                title: TeXView(
              renderingEngine: TeXViewRenderingEngine.katex(),
              loadingWidgetBuilder: (_) => CircularProgressIndicator(),
              child: TeXViewDocument(widget.answerD,
                  style: TeXViewStyle(
                    margin: TeXViewMargin.all(0),
                  )),
            )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            setState(() {
              statusAnswerA = false;
              statusAnswerB = false;
              statusAnswerC = false;
              statusAnswerD = false;
              statusAnswerE = true;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: statusAnswerE
                    ? widget.correctE
                        ? Colors.green
                        : Colors.red[300]
                    : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ]),
            child: ListTile(
                title: TeXView(
              renderingEngine: TeXViewRenderingEngine.katex(),
              loadingWidgetBuilder: (_) => CircularProgressIndicator(),
              child: TeXViewDocument(widget.answerE,
                  style: TeXViewStyle(
                    margin: TeXViewMargin.all(0),
                  )),
            )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Visibility(
          visible: false,
          child: ElevatedButton(
              onPressed: (() {
                setState(() {
                  visiblePembahasan = !visiblePembahasan;
                });
              }),
              child: Text("Tampilkan Pembahasan")),
        ),
        Visibility(
            visible: false,
            child: ListTile(
              title: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.width * 0.8,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: SvgPicture.asset(
                      widget.pembahasan,
                    ),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
