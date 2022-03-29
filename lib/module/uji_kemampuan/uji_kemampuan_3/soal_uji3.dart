import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/common/etc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tex/flutter_tex.dart';

class SoalUjiKetiga extends StatefulWidget {
  final TeXViewRenderingEngine renderingEngine;
  const SoalUjiKetiga(
      {Key? key, this.renderingEngine = const TeXViewRenderingEngine.katex()})
      : super(key: key);

  @override
  State<SoalUjiKetiga> createState() => _SoalUjiKetigaState();
}

class _SoalUjiKetigaState extends State<SoalUjiKetiga> {
  int currentQuizIndex = 0;
  String selectedOptionId = "";
  bool isWrong = false;
  bool showDiscussion = false;
  List<Quiz> quizList = [
    // no 1
    Quiz(statement: r"""
                  Perhatikan pernyataan di bawah ini!
                  <br><br>
                  <ol type='i'>
                    <li>i) Foton terhambur dan elektron terhambur terjadi setelah elektron menumbuk foton diam.</li>
                  
                    <li>ii) Elektron terhambur dapat berubah menjadi elektron dan positron. </li>
                   
                    <li>iii) Peristiwa berubahnya elektron menjadi partikel lain disebut produksi pasangan.</li>
                  
                    <li>iv) Foton terhambur dapat berubah menjadi elektron dan positron.</li>
                  </ol>
                  <br><br>
                  Pernyataan yang benar tentang efek Compton adalah…
                    """, options: [
      QuizOption('a', r"""(A)   1), 2), dan 3)"""),
      QuizOption('b', r"""(B)   1) dan 3)"""),
      QuizOption('c', r"""(C)   2) dan 4)"""),
      QuizOption('d', r"""(D)   Hanya 4)"""),
      QuizOption('e', r"""(E)   Semua pernyataan benar"""),
    ], correctOptionId: 'd'),
    Quiz(statement: r"""
                 Pada produksi sinar X digunakan beda potensial sebesar 50 kV. 
                 Jika muatan elektron sebesar \(1,6 \times 10^{-19} C \) dan 
                 massanya \(9 \times 10^{-31} kg \), 
                 kelajuan elektron ketika bergerak menuju anode adalah…

                    """, options: [
      QuizOption('a', r"""(A)   \(1,67 \times 10^{-7} m/s \)"""),
      QuizOption('b', r"""(B)   \(1,67 \times 10^{-17} m/s \)"""),
      QuizOption('c', r"""(C)   \(1,33 \times 10^{-7} m/s \)"""),
      QuizOption('d', r"""(D)   \(1,33 \times 10^{-17} m/s \)"""),
      QuizOption('e', r"""(E)   \(10^{-7} m/s \)"""),
    ], correctOptionId: 'c'),
    Quiz(statement: r"""
                 Panjang gelombang minimum yang dihasilkan tabung sinar X sebesar 0,495 Å. 
                 Maka besar potensial akselerasi yang dipancarkan oleh tabung adalah…
                (\(h=6,6 \times 10^{-34} Js \), \(c=3 \times 10^{8} m/s \) , 
                dan \(e = 1,6 \times 10^{-19} C \))

                    """, options: [
      QuizOption('a', r"""(A)   30 kV"""),
      QuizOption('b', r"""(B)   25 kV"""),
      QuizOption('c', r"""(C)   20 kV"""),
      QuizOption('d', r"""(D)   15 kV"""),
      QuizOption('e', r"""(E)   10 kV"""),
    ], correctOptionId: 'b'),
    Quiz(statement: r"""
                 Suatu produksi sinar X menggunakan sumber tegangan 30 kV. 
                 Berapa energi kinetik yang dimiliki elektron ketika bergerak 
                 menuju anode jika diketahui massa elektron adalah \(9 \times 10^{-31} kg \)
                 dan besar muatannya \(1,6 \times 10^{-19} C \)?


                    """, options: [
      QuizOption('a', r"""(A)   \(4,8 \times 10^{-17} J \)"""),
      QuizOption('b', r"""(B)   \(4,8 \times 10^{-7} J \)"""),
      QuizOption('c', r"""(C)   \(2,4 \times 10^{-17} J \)"""),
      QuizOption('d', r"""(D)   \(2,4 \times 10^{-7} J \)"""),
      QuizOption('e', r"""(E)   \(3,6 \times 10^{-17} J \)"""),
    ], correctOptionId: 'a'),
    // soal no 5
    Quiz(statement: r"""
                 Sebuah foton hambur memiliki sudut hambur \(53^o \) dan panjang 
                 gelombang 0,54 nm. Jika cos \(53^o \) adalah 3/5 dan tetapan 
                 \(6,6 \times 10^{-34} Js \), panjang gelombang foton yang datang adalah…


                    """, options: [
      QuizOption('a', r"""(A)   \(1,727 \times 10^{-19} m \)"""),
      QuizOption('b', r"""(B)   \(5,4906 \times 10^{-19} m \)"""),
      QuizOption('c', r"""(C)   \(5,4048 \times 10^{-10} m \)"""),
      QuizOption('d', r"""(D)   \(5,3903 \times 10^{-10} m \)"""),
      QuizOption('e', r"""(E)   \(5,3903 \times 10^{-11} m \)"""),
    ], correctOptionId: 'd'),
    // soal no 6
    Quiz(statement: r"""
                 Sebuah foton dengan panjang gelombang  menumbuk elektron diam sehingga 
                 panjang gelombang foton hambur menjadi 4 . 
                 Tentukan perbandingan momentum yang dimiliki 
                 foton tersebut sebelum dan sesudah menumbuk elektron!


                    """, options: [
      QuizOption('a', r"""(A)   1 : 2 """),
      QuizOption('b', r"""(B)   1 : 4"""),
      QuizOption('c', r"""(C)   2 : 1"""),
      QuizOption('d', r"""(D)   4 : 1"""),
      QuizOption('e', r"""(E)   1 : 8"""),
    ], correctOptionId: 'd'),
    Quiz(statement: r"""
                 Sebuah foton memiliki panjang gelombang 20 Å menumbuk elektron 
                 yang diam. Setelah tumbukkan, 
                 foton terhambur menyimpang \(60^o \) dari arah semula. 
                 Panjang gelombang foton hambur adalah…


                    """, options: [
      QuizOption('a', r"""(A)   19,988 Å """),
      QuizOption('b', r"""(B)   20,012 Å """),
      QuizOption('c', r"""(C)   20,112 Å """),
      QuizOption('d', r"""(D)   19,998 Å """),
      QuizOption('e', r"""(E)   20,212 Å """),
    ], correctOptionId: 'b'),
    // no 8
    Quiz(statement: r"""
                 Sinar X dengan panjang gelombang 4 Å dihamburkan dari sebuah 
                 balok karbon sehingga membentuk sudut \(90^o \) maka perubahan 
                 panjang gelombang foton sinar X tersebut adalah…


                    """, options: [
      QuizOption('a', r"""(A)  6% """),
      QuizOption('b', r"""(B)   4%  """),
      QuizOption('c', r"""(C)   1,2%  """),
      QuizOption('d', r"""(D)   0,4% """),
      QuizOption('e', r"""(E)   0,6% """),
    ], correctOptionId: 'e'),
    Quiz(statement: r"""
                 Sebuah foton hambur memiliki panjang gelombang 40 Å setelah 
                 menumbuk elektron. Jika foton hambur membentuk sudut \(60^o \) dari 
                 lintasan awalnya maka panjang gelombang foton sebelum tumbukan adalah…


                    """, options: [
      QuizOption('a', r"""(A)  49,998 Å  """),
      QuizOption('b', r"""(B)   50,012 Å  """),
      QuizOption('c', r"""(C)   50,112 Å  """),
      QuizOption('d', r"""(D)   49,988 Å """),
      QuizOption('e', r"""(E)   48,988 Å """),
    ], correctOptionId: 'd'),
    Quiz(statement: r"""
                Jika elektron dan foton memiliki panjang gelombang yang sama, 
                maka keduanya memiliki momentum yang sama.<br><br>
                SEBAB <br><br>
                Momentum berbanding lurus dengan panjang gelombang



                    """, options: [
      QuizOption('a',
          r"""(A)  Jika pernyataan benar, alasan benar, keduanya memiliki hubungan sebab akibat.  """),
      QuizOption('b',
          r"""(B)   Jika pernyataan benar, alasan benar, keduanya tidak memiliki hubungan sebab akibat. """),
      QuizOption('c', r"""(C)   Jika pernyataan benar, alasan salah.  """),
      QuizOption('d', r"""(D)   Jika pernyataan salah, alasan benar. """),
      QuizOption('e', r"""(E)   Jika pernyataan dan alasan salah. """),
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
                          child: Text(
                              currentQuizIndex == 9 ? "Selesai" : "Berikutnya"),
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
