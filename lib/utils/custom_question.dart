// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tex/flutter_tex.dart';

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
        ListTile(
          title: TeXView(
            child: TeXViewDocument(widget.soal),
          ),
          // title: Column(
          //   children: [
          //     Row(
          //       children: [
          //         RichText(text: TextSpan(text: widget.nomor)),
          //         // ignore: prefer_const_literals_to_create_immutables
          //         Flexible(
          //             child: RichText(
          //                 // ignore: prefer_const_literals_to_create_immutables
          //                 text: TextSpan(
          //           text: widget.soal,
          //         ))),
          //       ],
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          //       child: SizedBox(
          //         height: MediaQuery.of(context).size.width * 0.3,
          //         width: MediaQuery.of(context).size.width * 0.8,
          //         child: Image.asset("assets/materi/konsepfoton/2.png"),
          //       ),
          //     ),
          //   ],
          // ),
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
                child: TeXViewDocument(widget.answerA),
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
                child: TeXViewDocument(widget.answerB),
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
              child: TeXViewDocument(widget.answerC),
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
              child: TeXViewDocument(widget.answerD),
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
              child: TeXViewDocument(widget.answerE),
            )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: (() {
              setState(() {
                visiblePembahasan = !visiblePembahasan;
              });
            }),
            child: Text("Tampilkan Pembahasan")),
        Visibility(
            visible: visiblePembahasan,
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
