import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/common/etc.dart';
import 'package:fisikaapp/module/hasil_pembahasan/hasil_screen.dart';
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
  int nilai = 0;
  String jawaban = "";
  List<String> jawab = [];

  List<Quiz> quizList = [
    // no 1
    Quiz(
      statement: r"""
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
                    """,
      options: [
        QuizOption('a', r"""(A)   1), 2), dan 3)"""),
        QuizOption('b', r"""(B)   1) dan 3)"""),
        QuizOption('c', r"""(C)   2) dan 4)"""),
        QuizOption('d', r"""(D)   Hanya 4)"""),
        QuizOption('e', r"""(E)   Semua pernyataan benar"""),
      ],
      correctOptionId: 'd',
      pembahasan: r"""<p>
        <h4>Pembahasan:</h4> <br>
        Efek Compton terjadi ketika sebuah foton menumbuk elektron target yang diam. 
        Foton terhambur dan elektron terhambur terjadi setelah foton menumbuk elektron yang diam. 
        Ketika foton terhambur memiliki energi minimal sebesar 1,02 eV, maka foton dapat berubah 
        menjadi elektron dan positron. Persitiwa ini disebut sebagai produksi pasangan. <br>
        Jadi pernyataan yang benar hanya 4).

      </p>""",
    ),
    // 2
    Quiz(
      statement: r"""
                 Pada produksi sinar X digunakan beda potensial sebesar 50 kV. 
                 Jika muatan elektron sebesar \(1,6 \times 10^{-19} C \) dan 
                 massanya \(9 \times 10^{-31} kg \), 
                 kelajuan elektron ketika bergerak menuju anode adalah…

                    """,
      options: [
        QuizOption('a', r"""(A)   \(1,67 \times 10^{-7} m/s \)"""),
        QuizOption('b', r"""(B)   \(1,67 \times 10^{-17} m/s \)"""),
        QuizOption('c', r"""(C)   \(1,33 \times 10^{-7} m/s \)"""),
        QuizOption('d', r"""(D)   \(1,33 \times 10^{-17} m/s \)"""),
        QuizOption('e', r"""(E)   \(10^{-7} m/s \)"""),
      ],
      correctOptionId: 'c',
      pembahasan: r""" <p>
        <h4>Pembahasan: </h4> <br>
        Diketahui:	<br>
        \(V=50 kV=〖5×10〗^4  V \) <br>
        \(q_e=1,6×10^{-19}  C \) <br>
        \(m_e=9×10^{-31} kg \)
        Ditanya: \(v? \) <br>
        Jawab: <br>
        \(v= \sqrt{ \frac{2q_e V}{m_e} } \) <br>
        \(v= \sqrt{ \frac{2(1,6×10^{-19}  C)(〖5×10〗^4  V)}{9×10^{-31}  kg}}  \) <br>
        \(v= \sqrt{ \frac{16×10^{-17}}{9×10^{-31}}} = \frac{4}{3}×10^{-7}  \) <br>
        \(v=1,33×10^{-7} m/s \) <br>
        Jadi kelajuan elektron adalah \(1,33×10^{-7} m/s. \)

      </p>""",
    ),
    // 3
    Quiz(
      statement: r"""
                 Panjang gelombang minimum yang dihasilkan tabung sinar X sebesar 0,495 Å. 
                 Maka besar potensial akselerasi yang dipancarkan oleh tabung adalah…
                (\(h=6,6 \times 10^{-34} Js \), \(c=3 \times 10^{8} m/s \) , 
                dan \(e = 1,6 \times 10^{-19} C \))

                    """,
      options: [
        QuizOption('a', r"""(A)   30 kV"""),
        QuizOption('b', r"""(B)   25 kV"""),
        QuizOption('c', r"""(C)   20 kV"""),
        QuizOption('d', r"""(D)   15 kV"""),
        QuizOption('e', r"""(E)   10 kV"""),
      ],
      correctOptionId: 'b',
      pembahasan: r""" <p>
        <h4>Pembahasan: </h4> <br>
        Diketahui:	<br>
        \(λ_min=495×10^{-13} m \) <br>
        Ditanya: \(V_0  ? \) <br>
        Jawab: <br>
        \(λ_min= \frac{12,42×10^{-7} J}{V_0}  \) <br>
        \(V_0= \frac{12,42×10^{-7} J}{λ_min} = \frac{12,42×10^{-7} J}{495×10^{-13} m } \) <br>
        \(V_0=25 kV  \) <br>
        Jadi besar potensial akselerasi yang dipancarkan oleh tabung adalah \(25 kV \)

      </p>""",
    ),

    Quiz(
      statement: r"""
                 Suatu produksi sinar X menggunakan sumber tegangan 30 kV. 
                 Berapa energi kinetik yang dimiliki elektron ketika bergerak 
                 menuju anode jika diketahui massa elektron adalah \(9 \times 10^{-31} kg \)
                 dan besar muatannya \(1,6 \times 10^{-19} C \)?


                    """,
      options: [
        QuizOption('a', r"""(A)   \(4,8 \times 10^{-17} J \)"""),
        QuizOption('b', r"""(B)   \(4,8 \times 10^{-7} J \)"""),
        QuizOption('c', r"""(C)   \(2,4 \times 10^{-17} J \)"""),
        QuizOption('d', r"""(D)   \(2,4 \times 10^{-7} J \)"""),
        QuizOption('e', r"""(E)   \(3,6 \times 10^{-17} J \)"""),
      ],
      correctOptionId: 'a',
      pembahasan: r"""<p>
        <h4>Pembahasan: </h4> <br> 
        Diketahui:	<br>
        \(V=30×10^3  V \) <br>
        \(m_e=9,1×10^{-31}  kg \) <br>
        \(q_e=1,6×10^{-19}  C \) <br>
        Ditanya: \(E_k? \) <br>
        Jawab: <br>
        \(E_k= \frac{1}{2} mv^2 \) dan \( v= \sqrt{ \frac{2qV}{m}} \) <br>
        Maka  \( v^2= \frac{2qV}{m} \) <br>
        Sehingga <br>
        \(E_k= \frac{2mqV}{2m} = qV \) <br> 
        \(E_k=1,6×10^{-19}  C×30×10^3  V  \) <br>
        \(E_k=48×10^(-16)=4,8×10^{-17} J \) <br>
        Jadi energi kinetik yang dimiliki elektron adalah \(4,8×10^{-17} J. \)

      </p>""",
    ),
    // soal no 5
    Quiz(
      statement: r"""
                 Sebuah foton hambur memiliki sudut hambur \(53^o \) dan panjang 
                 gelombang 0,54 nm. Jika cos \(53^o \) adalah 3/5 dan tetapan 
                 \(6,6 \times 10^{-34} Js \), panjang gelombang foton yang datang adalah…


                    """,
      options: [
        QuizOption('a', r"""(A)   \(1,727 \times 10^{-19} m \)"""),
        QuizOption('b', r"""(B)   \(5,4906 \times 10^{-19} m \)"""),
        QuizOption('c', r"""(C)   \(5,4048 \times 10^{-10} m \)"""),
        QuizOption('d', r"""(D)   \(5,3903 \times 10^{-10} m \)"""),
        QuizOption('e', r"""(E)   \(5,3903 \times 10^{-11} m \)"""),
      ],
      correctOptionId: 'd',
      pembahasan: r"""<p> 
        <h4>Pembahasan: </h4> <br>
        Diketahui:	
        \(θ=53^o;cos⁡〖53^o 〗= \frac{3}{5} \) <br>
        \(m_e=9,1×10^{-31}  kg \) <br>
        \(h=6,6×10^{-34}  Js \) <br>
        \(λ^'=0,54 nm \) <br>
        Ditanya: \(λ? \) <br>
        Jawab: <br>
        \( λ^{'}-λ=   \frac{h}{m_e  c}(1-cos⁡θ) \) <br>
        \(Δλ= \frac{6,6×10^{-34}  Js}{(9,1×10^{-31}  kg)×(3×10^8  m⁄s)} (1-cos⁡〖53^o 〗) \) <br>

        \(Δλ= \frac{6,6×10^{-11}}{9,1×3} (1-\frac{3}{5}) = \frac{2,2×10^{-11}}{9,1} (\frac{2}{5}) \) <br>
        \(Δλ=0,0967×10^{-11}  m \) <br>
        \(λ=λ^{'}-Δλ= (54-0,0967) 10^{-11} \) <br>
        \(λ=53,9033×10^{-11}=5,3903×10^{-10}  m \) <br>
        Jadi panjang gelombang foton yang datang adalah \(5,3903×10^{-10}  m. \)

      </p>""",
    ),
    // soal no 6
    Quiz(
      statement: r"""
                 Sebuah foton dengan panjang gelombang  menumbuk elektron diam sehingga 
                 panjang gelombang foton hambur menjadi 4 . 
                 Tentukan perbandingan momentum yang dimiliki 
                 foton tersebut sebelum dan sesudah menumbuk elektron!


                    """,
      options: [
        QuizOption('a', r"""(A)   1 : 2 """),
        QuizOption('b', r"""(B)   1 : 4"""),
        QuizOption('c', r"""(C)   2 : 1"""),
        QuizOption('d', r"""(D)   4 : 1"""),
        QuizOption('e', r"""(E)   1 : 8"""),
      ],
      correctOptionId: 'd',
      pembahasan: r"""<p>
        <h4>Pembahasan:</h4> <br>
        Diketahui:	<br>
        \(λ=λ \) <br>
        \(λ^{'}= 4λ \) <br>
        Ditanya: \(p? \) <br>
        Jawab: <br>
        \( p= \frac{h v}{c} = \frac{h}{λ}  \) <br> 
        \( \frac{p}{p^{'}} = \frac{\frac{h}{λ}}{\frac{h}/{λ^{'}} }= \frac{λ^{'}}{λ}  \)<br>
        \( \frac{p}{p^{'}} = \frac{4λ}{λ}=4∶1 \) <br>
        Jadi perbandingan momentum yang dimiliki foton tersebut sebelum dan sesudah menumbuk elektron adalah 4 : 1.

    </p>""",
    ),
    // 7
    Quiz(
      statement: r"""
                 Sebuah foton memiliki panjang gelombang 20 Å menumbuk elektron 
                 yang diam. Setelah tumbukkan, 
                 foton terhambur menyimpang \(60^o \) dari arah semula. 
                 Panjang gelombang foton hambur adalah…


                    """,
      options: [
        QuizOption('a', r"""(A)   19,988 Å """),
        QuizOption('b', r"""(B)   20,012 Å """),
        QuizOption('c', r"""(C)   20,112 Å """),
        QuizOption('d', r"""(D)   19,998 Å """),
        QuizOption('e', r"""(E)   20,212 Å """),
      ],
      correctOptionId: 'b',
      pembahasan: r"""<p>
        <h4>Pembahasan: </h4> <br>
        Diketahui:	<br>
        \(λ=20×10^{-10}  m \) <br>
        \(θ=60^o \) <br>
        Ditanya: \(λ^{'}? \)  <br>
        Jawab: <br>
        \( λ^{'}-λ= \frac{h}{m_0 c} (1-cos⁡θ) \) <br>
        \( Δλ= \frac{(6,6×10^{-34} Js)}{(9,1×10^{-31}  kg)×(3×10^8  m⁄s) }(1-cos⁡〖60^o 〗) \) <br>
        \( Δλ= \frac{6,6×10^{-11}}{9,1×3} (1- \frac{1}{2}) = \frac{2,2×10^{-11}}{9,1} (\frac{1}{2}) \) <br>
        \(Δλ=0,012 Å \) <br>
        λ^'= \(Δλ+λ=20+0,012=20,012 Å  \) <br>
        Jadi panjang gelombang foton hambur adalah \(20,012 Å  .\)

      </p>""",
    ),
    // no 8
    Quiz(
      statement: r"""
                 Sinar X dengan panjang gelombang 4 Å dihamburkan dari sebuah 
                 balok karbon sehingga membentuk sudut \(90^o \) maka perubahan 
                 panjang gelombang foton sinar X tersebut adalah…


                    """,
      options: [
        QuizOption('a', r"""(A)  6% """),
        QuizOption('b', r"""(B)   4%  """),
        QuizOption('c', r"""(C)   1,2%  """),
        QuizOption('d', r"""(D)   0,4% """),
        QuizOption('e', r"""(E)   0,6% """),
      ],
      correctOptionId: 'e',
      pembahasan: r"""<p>
        <h4>Pembahasan:</h4> <br>
        Diketahui:	<br>
        \(λ=4×10^{-10}  m \) <br>
        \(θ=90^o \) <br>
        Ditanya: \( \frac{Δλ}{λ} dalam persen \) <br>
        Jawab: <br>
        \(λ^{'}-λ= \frac{h}{m_0 c}(1-cos⁡θ) \) <br>
        \(Δλ= \frac{(6,6×10^{-34} Js)}{(9,1×10^{-31}  kg)×(3×10^8  m⁄s) } (1-cos⁡〖90^o 〗 ) \) <br>
        \(Δλ= \frac{6,6×10^{-11}}{9,1×3} (1-0)= \frac{2,2×10^{-11}}{9,1} (1) \) <br>
        \(Δλ=0,0241 Å \) <br>
        \( \frac{Δλ}{λ}% = \frac{0,0241}{4}×100%=0,6%  \) <br>
        Jadi perubahan panjang gelombang foton sinar X tersebut adalah 0,6%.

      </p>""",
    ),

    // 9
    Quiz(
        statement: r"""
                 Sebuah foton hambur memiliki panjang gelombang 40 Å setelah 
                 menumbuk elektron. Jika foton hambur membentuk sudut \(60^o \) dari 
                 lintasan awalnya maka panjang gelombang foton sebelum tumbukan adalah…


                    """,
        options: [
          QuizOption('a', r"""(A)  49,998 Å  """),
          QuizOption('b', r"""(B)   50,012 Å  """),
          QuizOption('c', r"""(C)   50,112 Å  """),
          QuizOption('d', r"""(D)   49,988 Å """),
          QuizOption('e', r"""(E)   48,988 Å """),
        ],
        correctOptionId: 'd',
        pembahasan: r"""<p>
      <h4>Pembahasan: </h4> <br>
      Diketahui:	<br>
      \(λ=50 Å \) <br>
      \(θ=60^o \) <br>
      Ditanya: p'? <br>
      Jawab: <br>
      \( λ^{'}-λ= \frac{h}{m_0 c}(1-cos⁡θ) \) <br>
      \(Δλ= \frac{(6,6×10^{-34} Js)}{(9,1×10^{-31}  kg)×(3×10^8  m⁄s) }(1-cos⁡〖60^o 〗) \)<br>
      \(Δλ= \frac{6,6×10^(-11)}{9,1×3} (1- \frac{1}{2}) = \frac{2,2×10^{-11}}{9,1} (\frac{1}{2}) \) <br>
      \(Δλ=0,0121 Å \) <br>
      λ=λ^'-Δλ= \(50-0,012=49,988 Å  \) <br>
      Jadi panjang gelombang foton sebelum tumbukan adalah \(49,988 Å. \)

    </p>"""),
    Quiz(
      statement: r"""
                Jika elektron dan foton memiliki panjang gelombang yang sama, 
                maka keduanya memiliki momentum yang sama.<br><br>
                SEBAB <br><br>
                Momentum berbanding lurus dengan panjang gelombang



                    """,
      options: [
        QuizOption('a',
            r"""(A)  Jika pernyataan benar, alasan benar, keduanya memiliki hubungan sebab akibat.  """),
        QuizOption('b',
            r"""(B)   Jika pernyataan benar, alasan benar, keduanya tidak memiliki hubungan sebab akibat. """),
        QuizOption('c', r"""(C)   Jika pernyataan benar, alasan salah.  """),
        QuizOption('d', r"""(D)   Jika pernyataan salah, alasan benar. """),
        QuizOption('e', r"""(E)   Jika pernyataan dan alasan salah. """),
      ],
      correctOptionId: 'd',
      pembahasan: r"""<p>
      <h4>Pembahasan: </h4> <br>
      \(p= \frac{h}{λ} \) <br>
      Jika λ sama, maka p sama. p berbanding terbalik dengan λ. Pernyataan benar, alasan salah.

    </p>""",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
                  child: SvgPicture.asset("assets/images/Icon-pencil.svg"),
                  //decoration: BoxDecoration(border: Border.all()),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Text(
                    "Uji\nKemampuan 3",
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
                      TeXViewDocument(
                        quizList[currentQuizIndex].statement,
                        style: TeXViewStyle(
                          fontStyle: TeXViewFontStyle(fontFamily: "roboto"),
                          textAlign: TeXViewTextAlign.Justify,
                        ),
                      ),
                      TeXViewGroup(
                        children: quizList[currentQuizIndex].options.map(
                          (QuizOption option) {
                            return TeXViewGroupItem(
                              rippleEffect: false,
                              id: option.id,
                              child: TeXViewDocument(
                                option.option,
                                style: const TeXViewStyle(
                                  padding: TeXViewPadding.all(10),
                                ),
                              ),
                            );
                          },
                        ).toList(),
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
                        },
                      )
                    ],
                  ),
                  style: TeXViewStyle(
                    margin: TeXViewMargin.all(5),
                    padding: TeXViewPadding.all(10),
                    borderRadius: TeXViewBorderRadius.all(10),
                    border: TeXViewBorder.all(
                      TeXViewBorderDecoration(
                          borderColor: Colors.blue,
                          borderStyle: TeXViewBorderStyle.Solid,
                          borderWidth: 5),
                    ),
                    backgroundColor: Colors.white,
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
                              if (nilai > 0) {
                                nilai--;
                              }
                              jawab.removeLast();
                            }
                          });
                        },
                        child: Text("Sebelumnya"),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        onPressed: (() {
                          jawaban = selectedOptionId;
                          jawab.add(jawaban);

                          setState(() {
                            selectedOptionId = "";

                            if (jawaban ==
                                quizList[currentQuizIndex].correctOptionId) {
                              nilai++;
                            }
                          });

                          if (currentQuizIndex != quizList.length - 1) {
                            currentQuizIndex++;
                          }

                          if (jawab.length == 10) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HasilScreen(
                                  nilai: nilai,
                                  jawab: jawab,
                                  quizList: quizList,
                                  headTitle: 'Uji \nKemampuan 3',
                                  navTitle: 'Uji Kemampuan',
                                ),
                              ),
                            );
                          }
                          // print(jawab);
                          // print(currentQuizIndex);
                        }),
                        child: Text(
                            currentQuizIndex == 9 ? "Selesai" : "Berikutnya"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]))
      ],
    );
  }
}
