import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/common/etc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tex/flutter_tex.dart';

class SoalUjiKedua extends StatefulWidget {
  final TeXViewRenderingEngine renderingEngine;
  const SoalUjiKedua(
      {Key? key, this.renderingEngine = const TeXViewRenderingEngine.katex()})
      : super(key: key);

  @override
  State<SoalUjiKedua> createState() => _SoalUjiKeduaState();
}

class _SoalUjiKeduaState extends State<SoalUjiKedua> {
  int currentQuizIndex = 0;
  String selectedOptionId = "";
  bool isWrong = false;
  bool showDiscussion = false;
  List<Quiz> quizList = [
    // no 1
    Quiz(statement: r"""
                  Perhatikan pernyataan-pernyataan berikut!
                  <br><br>
                  <ol type='i'>
                    <li>i) Peristiwa efek fotolistrik dapat dijelaskan dengan menganggap cahaya terdiri dari paket-paket energi.</li>
                  
                    <li>ii) Peristiwa efek fotolistrik dapat membuktikan bahwa cahaya dapat berperilaku sebagai gelombang. </li>
                   
                    <li>iii) Energi elektron yang keluar dari permukaan logam bergantung pada frekuensi.</li>
                  
                    <li>iv) Foton memiliki kecepatan yang melebihi kecepatan cahaya.</li>
                  
                    <li>v) Peristiwa efek fotolistrik terjadi pada daerah sekitar inframerah.</li>
                  </ol>
                  <br><br>
                  Pernyataan yang benar tentang efek fotolistrik adalah…
                    """, options: [
      QuizOption('a', r"""(A)   i) dan ii)"""),
      QuizOption('b', r"""(B)   i) dan iii)"""),
      QuizOption('c', r"""(C)   i) dan iv)"""),
      QuizOption('d', r"""(D)   ii) dan iii)"""),
      QuizOption('e', r"""(E)   ii) dan iv)"""),
    ], correctOptionId: 'b'),
    Quiz(statement: r"""
                  Frekuensi kerja sebuah logam adalah \(5 \times 10^{14} Hz \), 
                  ketika diberi cahaya berfrekuensi \(8 \times 10^{14} Hz \). 
                  Maka besar energi kinetik elektron yang keluar dari logam tersebut adalah…
                    """, options: [
      QuizOption('a', r"""(A)   \(3,989 \times 10^{-19} Joule \)"""),
      QuizOption('b', r"""(B)   \(2,989 \times 10^{-19} Joule \)"""),
      QuizOption('c', r"""(C)   \(1,989 \times 10^{-19} Joule \)"""),
      QuizOption('d', r"""(D)   \(4,969 \times 10^{-19} Joule \)"""),
      QuizOption('e', r"""(E)   \(5,909 \times 10^{-19} Joule \)"""),
    ], correctOptionId: 'c'),
    Quiz(statement: r"""
                  Energi kinetik elektron yang keluar dari logam ketika diberi 
                  cahaya berenergi \(3,3 \times 10^{-19} Joule \) adalah \(1,5 \times 10^{-19} Joule \). 
                  Maka besar energi ambang logam tersebut adalah…

                    """, options: [
      QuizOption('a', r"""(A)   \(1,8 \times 10^{-19} Joule \)"""),
      QuizOption('b', r"""(B)   \(2,8 \times 10^{-19} Joule \)"""),
      QuizOption('c', r"""(C)   \(3,8 \times 10^{-19} Joule \)"""),
      QuizOption('d', r"""(D)   \(4,8 \times 10^{-19} Joule \)"""),
      QuizOption('e', r"""(E)   \(5,8 \times 10^{-19} Joule \)"""),
    ], correctOptionId: 'a'),
    Quiz(statement: r"""
                  Jika sinar ungu frekuensi \(10^6 Hz \) dijatuhkan pada permukaan 
                  logam yang mempunyai energi ambang 2/3 kali kuanta energi 
                  sinar ungu dan jika tetapan Planck \(6,6 \times 10^{-34} Js \), 
                  maka energi kinetik elektron yang lepas adalah…


                    """, options: [
      QuizOption('a', r"""(A)   \(1,11 \times 10^{-18} J \)"""),
      QuizOption('b', r"""(B)   \(2,21 \times 10^{-18} J \)"""),
      QuizOption('c', r"""(C)   \(3,31 \times 10^{-18} J \)"""),
      QuizOption('d', r"""(D)   \(4,41 \times 10^{-18} J \)"""),
      QuizOption('e', r"""(E)   \(6,61 \times 10^{-18} J \)"""),
    ], correctOptionId: 'b'),
    Quiz(
        isHasImage: true,
        statement: r"""
                  Grafik di atas adalah grafik \(E_{k} \) fotoelektron terhadap frekuensi 
                  sinar yang digunakan pada efek fotolistrik. Nilai P pada grafik 
                  tersebut adalah … Joule <br>
                  ( \(h=6,63 \times 10^{-34} Js\) )

                    """,
        options: [
          QuizOption('a', r"""(A)   \(2,64 \times 10^{-33}  \)"""),
          QuizOption('b', r"""(B)   \(3,35 \times 10^{-30}  \)"""),
          QuizOption('c', r"""(C)   \(6,63 \times 10^{-20}  \)"""),
          QuizOption('d', r"""(D)   \(2,64 \times 10^{-19}  \)"""),
          QuizOption('e', r"""(E)   \(3,35 \times 10^{-19}  \)"""),
        ],
        correctOptionId: 'c'),
    // no 6
    Quiz(statement: r"""
                  Frekuensi ambang suatu logam adalah \(1,5 \times 10^{16} Hz \). 
                  Apabila logam tersebut disinari dengan cahaya yang mempunyai 
                  frekuensi \(2 \times 10^{16} Hz \), \(h=6,63 \times 10^{-34} Js\), 
                  dan \(1 eV = 1,6 \times 10^{-19} J \), 
                  maka besarnya energi kinetik elektron yang terlepas dari 
                  permukaan logam tersebut adalah…

                    """, options: [
      QuizOption('a', r"""(A)   41,2 eV """),
      QuizOption('b', r"""(B)   29,6 eV """),
      QuizOption('c', r"""(C)   13,6 eV """),
      QuizOption('d', r"""(D)   20,7 eV """),
      QuizOption('e', r"""(E)   5,20 eV """),
    ], correctOptionId: 'd'),

    // no 7
    Quiz(statement: r"""
                  Sebuah partikel elektron bermassa \(9 \times 10^{-31} kg \) bergerak dengan 
                  laju \(1,5 \times 10^6 m/s \). Jika konstanta Planck = \(6,63 \times 10^{-34} Js \), 
                  panjang gelombang de Broglie elektron adalah…
                    """, options: [
      QuizOption('a', r"""(A)   \(3,21 \times 10^{-10} \) m """),
      QuizOption('b', r"""(B)   \(4,91 \times 10^{-10} \) m """),
      QuizOption('c', r"""(C)   \(5,01 \times 10^{-10} \) m """),
      QuizOption('d', r"""(D)   \(6,61 \times 10^{-10} \) m """),
      QuizOption('e', r"""(E)   \(8,21 \times 10^{-10} \) m """),
    ], correctOptionId: 'b'),
    Quiz(statement: r"""
                  Sebuah partikel elektron bermassa \(9 \times 10^{31} kg \) dipercepat 
                  melalui beda potensial 100 volt mempunyai laju \(5,93 \times 10^6 m/s \). 
                  Jika konstanta Planck = \(6,63 \times 10^{-34} Js \), maka panjang 
                  gelombang de Broglie elektron adalah…

                    """, options: [
      QuizOption('a', r"""(A)   \(1,23 \times 10^{-4} \) m """),
      QuizOption('b', r"""(B)   \(1,23 \times 10^{-6} \) m """),
      QuizOption('c', r"""(C)   \(1,23 \times 10^{-7} \) m """),
      QuizOption('d', r"""(D)   \(1,23 \times 10^{-8} \) m """),
      QuizOption('e', r"""(E)   \(1,23 \times 10^{-10} \) m """),
    ], correctOptionId: 'e'),
    // no 9
    Quiz(statement: r"""
                  Jika kelajuan perambatan cahaya di udara sebesar \(3 \times 10^8 m/s \), 
                  dan nilai konstanta Planck = \(6,6 \times 10^{-34} Js \), maka foton yang panjang 
                  gelombangnya 100 angstrom mempunyai momentum sebesar…


                    """, options: [
      QuizOption('a', r"""(A)   \(1,2 \times 10^{-36} kgm/s \) m """),
      QuizOption('b', r"""(B)   \(1,5 \times 10^{-33} kgm/s \) m """),
      QuizOption('c', r"""(C)   \(6,6 \times 10^{-26} kgm/s \) m """),
      QuizOption('d', r"""(D)   \(1,5 \times 10^{-25} kgm/s \) m """),
      QuizOption('e', r"""(E)   \(10^{26} kgm/s \) m """),
    ], correctOptionId: 'c'),
    Quiz(statement: r"""
                  Sebuah partikel bermassa m bergerak dengan kecepatan v memiliki 
                  panjang gelombang de Broglie . Jika massa partikel menyusut 
                  menjadi ¼ kali semula dan bergerak dengan kecepatan 2 kali semula, 
                  perbandingan gelombang de Broglie sesudah dan sebelum mengalami penyusutan adalah…



                    """, options: [
      QuizOption('a', r"""(A)   1 : 2 """),
      QuizOption('b', r"""(B)   1 : 3 """),
      QuizOption('c', r"""(C)   1 : 6 """),
      QuizOption('d', r"""(D)   2 : 1 """),
      QuizOption('e', r"""(E)   3 : 1 """),
    ], correctOptionId: 'd'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                right: 20.0, left: 20.0, top: 20.0, bottom: 10),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: SvgPicture.asset("assets/images/Icon-pencil.svg"),
                  //decoration: BoxDecoration(border: Border.all()),
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Text(
                    "Uji\nKemampuan 2",
                    style: TextStyle(
                      fontSize: 30,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
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
                  loadingWidgetBuilder: (BuildContext context) => SizedBox(
                      height: MediaQuery.of(context).size.width * 0.8,
                      child: Center(child: CircularProgressIndicator())),
                  fonts: const [
                    TeXViewFont(
                        fontFamily: 'roboto',
                        src: 'assets/font/Roboto-Black.ttf')
                  ],
                  renderingEngine: widget.renderingEngine,
                  child: TeXViewColumn(
                    children: [
                      quizList[currentQuizIndex].isHasImage == true
                          ? const TeXViewImage.asset(
                              "assets/ujikem2soalno5.PNG")
                          : const TeXViewDocument(""),
                      TeXViewDocument(quizList[currentQuizIndex].statement,
                          style: TeXViewStyle(
                              fontStyle: TeXViewFontStyle(fontFamily: "roboto"),
                              textAlign: TeXViewTextAlign.justify)),
                      TeXViewGroup(
                          children: quizList[currentQuizIndex]
                              .options
                              .map((QuizOption option) {
                            return TeXViewGroupItem(
                                rippleEffect: false,
                                id: option.id,
                                child: TeXViewDocument(option.option,
                                    style: const TeXViewStyle(
                                        padding: TeXViewPadding.all(10))));
                          }).toList(),
                          selectedItemStyle: TeXViewStyle(
                              borderRadius: const TeXViewBorderRadius.all(10),
                              border: TeXViewBorder.all(TeXViewBorderDecoration(
                                  borderWidth: 3,
                                  borderColor: Colors.green[900])),
                              margin: const TeXViewMargin.all(10)),
                          normalItemStyle:
                              const TeXViewStyle(margin: TeXViewMargin.all(10)),
                          onTap: (id) {
                            selectedOptionId = id;
                            setState(() {
                              isWrong = false;
                            });
                          })
                    ],
                  ),
                  style: const TeXViewStyle(
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
                if (isWrong)
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Jawaban Salah!!! Silahkan Check Kembali",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  ),
                if (showDiscussion)
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Jawaban Benar!!!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.green),
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
                            if (currentQuizIndex > 0) {
                              selectedOptionId = "";
                              currentQuizIndex--;
                            }
                          });
                        },
                        child: const Text("Sebelumnya"),
                      ),
                    ),
                    Visibility(
                      visible: currentQuizIndex < 10,
                      child: SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                          ),
                          onPressed: (() {
                            setState(() {
                              selectedOptionId = "";
                              if (currentQuizIndex != quizList.length - 1) {
                                currentQuizIndex++;
                              }
                            });
                          }),
                          child: const Text("Berikutnya"),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
