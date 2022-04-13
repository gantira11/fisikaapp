// ignore_for_file: prefer_const_constructors

// import 'dart:html';

import 'dart:ffi';

import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/common/etc.dart';
import 'package:fisikaapp/module/hasil_pembahasan/hasil_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tex/flutter_tex.dart';

class TextQuizOne extends StatefulWidget {
  final TeXViewRenderingEngine renderingEngine;
  const TextQuizOne(
      {Key? key, this.renderingEngine = const TeXViewRenderingEngine.katex()})
      : super(key: key);

  @override
  _TextQuizOneState createState() => _TextQuizOneState();
}

class _TextQuizOneState extends State<TextQuizOne> {
  int currentQuizIndex = 0;
  String selectedOptionId = '';
  bool isWrong = false;
  bool showDiscussion = false;
  int nilai = 0;
  String jawaban = '';
  List<String> jawab = [];
  String heading = '';

  List<Quiz> quizList = [
    // no 1
    Quiz(
        statement: r"""<h4>Suatu benda mempunyai emisivitas 0,41. 
            Berapakah intensitas radiasi total benda tersebut pada suhu 400K? (tetapan Stefan-Boltzman 
            \(σ = {5,67 \times 10^{-8} W/m^2 K^2}\)
            )</h4>""",
        options: [
          QuizOption('a', r""" <h4>(A)   \(6,02 \times 10^2 kJ \)</h4>"""),
          QuizOption('b', r""" <h4>(B)   \(6,02 \times 10^3 kJ \)</h4>"""),
          QuizOption('c', r""" <h4>(C)   \(6,02 \times 10^2 J \)</h4>"""),
          QuizOption('d', r""" <h4>(D)   \(6,02 \times 10^3 J \)</h4>"""),
          QuizOption('e', r""" <h4>(E)   \(6,02 \times 10^4 J \)</h4>"""),
        ],
        correctOptionId: 'c',
        pembahasan: r"""<p>
        <h4>Pembahasan: </h4> <br>
        Diketahui: <br> 
        \(e = 0,41 \)<br> 
        \(T = 400 K \)<br>
        Ditanya: \(R? \) <br> 
        Jawab: <br>
        \(R = eσT^4\) <br>
        \(R=(0,41)×(5,67×10^{-8}  W⁄m^2 k^4 )×(400 K)^4 \) <br>
        \( R=6,02×10^2 J \) <br>
        <p> Jadi intensitas radiasi totalnya adalah \(6,02×10^2 Joule \) </p>

        <p>"""),

    // no 2
    Quiz(
        statement:
            r"""<h4>Sebuah benda hitam mempunyai suhu 2.000 K. Jika konstanta Wien \(C = {2,898 \times 10^{-3} mK}\) 
            maka rapat energi maksimum yang dipancarkan benda itu terletak pada panjang gelombang \(\lambda \) sebesar…
            </h4>""",
        options: [
          QuizOption('a', r""" <h4>(A)   \(1,4  \mu m \)</h4>"""),
          QuizOption('b', r""" <h4>(B)   \(2,9  \mu m \)</h4>"""),
          QuizOption('c', r""" <h4>(C)   \(5,8  \mu m \)</h4>"""),
          QuizOption('d', r""" <h4>(D)   \(7,3  \mu m \)</h4>"""),
          QuizOption('e', r""" <h4>(E)   \(112,4  \mu m \)</h4>"""),
        ],
        correctOptionId: 'a',
        pembahasan: r""" <p>
            <h4>Pembahasan: </h4> <br>
            Diketahui: <br>	\(T=2.000 K \) <br> \(C=2,898×10^{-3}  m K \) <br>
            Ditanya: \( λ_m? \) <br>
            Jawab: <br>
            \(λ_m  T=C \) <br>
            \(λ_m= \frac{C}{T} \) <br>
            \(λ_m= \frac{2,898×10^{-3}  m K}{2.000 K} \) <br> 
            \(λ_m=1,4×10^{-6}  m=1,4 μm \) <br>
            Jadi panjang gelombang yang memancarkan energi maksimum adalah \(1,4 μm. \) </p> """),

    // no 3
    Quiz(
        statement:
            r"""<h4>Sebuah benda pijar yang terbuat dari baja memancarkan energi 
            maksimum pada gelombang cahaya 5.000 Å. Suhu sumber cahaya tersebut adalah…
            </h4>""",
        options: [
          QuizOption('a', r""" <h4>(A)   \(5.523^oC \)</h4>"""),
          QuizOption('b', r""" <h4>(B)   \(6.606^oC \)</h4>"""),
          QuizOption('c', r""" <h4>(C)   \(8.233^oC \)</h4>"""),
          QuizOption('d', r""" <h4>(D)   \(9.726^oC \)</h4>"""),
          QuizOption('e', r""" <h4>(E)   \(1.003^oC \)</h4>"""),
        ],
        correctOptionId: 'a',
        pembahasan: r""" <p>
          <h4>Pembahasan: </h4> <br>
          Diketahui:	<br>
          \(λ_m=5.000 Å \) <br>
          \(C=2,898×10^{-3}  m K \) <br>
          Ditanya: \(T? \) <br>
          Jawab: <br>
          \(λ_m  T=C \) <br>
          \(T= \frac{C}{λ}_m \) <br>
          \(T= \frac{2,898×10^{-3}  m K}{5.000×10^{-10}  m}=5.796 K=〖5.523〗^o C \) <br>
          Jadi suhu sumber cahaya tersebut adalah \(5.523^oC. \) </p>"""),

    //no 4
    Quiz(
      statement: r"""<h4>Panjang gelombang pembawa energi radiasi 
            maksimum suatu benda bersuhu \(25^oC \) adalah… \(C = {2,98 \times 10^{-3} mK}\)
            </h4>""",
      options: [
        QuizOption('a', r""" <h4>(A)   \(10^{-9} m \)</h4>"""),
        QuizOption('b', r""" <h4>(B)   \(10^{-8} m  \)</h4>"""),
        QuizOption('c', r""" <h4>(C)   \(10^{-7} m  \)</h4>"""),
        QuizOption('d', r""" <h4>(D)   \(10^{-6} m \)</h4>"""),
        QuizOption('e', r""" <h4>(E)   \(10^{-5} m  \)</h4>"""),
      ],
      correctOptionId: 'e',
      pembahasan: r""" <p>
        <h4>Pembahasan: </h4><br>
        Diketahui: <br>
        \(T=25^o \) <br> 
        \(C=298 K \) <br>
        \(C=2,98×10^{-3}  m K \) <br>
        Ditanya:  \(λ_m? \) <br>
        Jawab: <br>
        \( λ_m  T=C \) <br>
        \(λ_m= \frac{C}{T} \) <br>
        \(λ_m= \frac{2,98×10^{-3}  m K}{298 K}=10^{-5} m \) <br>
        Jadi panjang gelombang pembawa energi radiasi maksimum materi tersebut adalah \(10^{-5} m.\) </p> """,
    ),
    //no 5
    Quiz(
      statement:
          r"""<h4>Empat benda hitam (A, B, C, dan D) meradiasikan gelombang 
            dengan panjang gelombang yang berbeda yaitu
            \( \lambda_{A} > \lambda_{B} = \lambda_{C} > \lambda_{D} \)
            Ber-dasarkan keterangan tersebut, dapat disimpulkan bahwa…
            </h4>""",
      options: [
        QuizOption(
            'a', r""" <h4>(A)   Frekuensi ketiga benda sama besar</h4>"""),
        QuizOption(
            'b', r""" <h4>(B)   Suhu mutlak benda A paling besar</h4>"""),
        QuizOption(
            'c', r""" <h4>(C)   Suhu mutlak benda D paling besar</h4>"""),
        QuizOption(
            'd', r""" <h4>(D)   Suhu mutlak ketiga benda sama besar</h4>"""),
        QuizOption(
            'e', r""" <h4>(E)   Warna spektrum ketiga benda sama</h4>"""),
      ],
      correctOptionId: 'c',
      pembahasan: r""" <p>
          <h4>Pembahasan: </h4> <br>
          Diketahui hubungan panjang gelombang A, B, C, dan D adalah \(λ_A>λ_B=λ_C>λ_D. \) <br>
          Berdasarkan persamaan pergeseran Wien  \(λ_m  T=C \), dapat diketahui hubungan panjang gelombang 
          dan suhu mutlak berbanding terbalik. Artinya semakin besar panjang gelombang maka akan 
          semakin kecil suhunya, begitu juga sebaliknya. Sehingga suhu mutlak benda D paling besar. </p> 
      """,
    ),
    // soal no 6
    Quiz(
        statement:
            r"""<h4>Sebuah benda pada suhu T memancarkan radiasi termal dengan 
            panjang gelombang yang bervariasi. Radiasi dengan panjang gelombang 580 mikrometer 
            memancarkan rapat energi maksimum. Jika suhu benda dinaikkan menjadi 2T 
            maka panjang gelombang radiasi dengan rapat energi maksimum berubah menjadi…
            </h4>""",
        options: [
          QuizOption('a', r""" <h4>(A)   72,5 mikrometer</h4>"""),
          QuizOption('b', r""" <h4>(B)   145 mikrometer</h4>"""),
          QuizOption('c', r""" <h4>(C)   290 mikrometer</h4>"""),
          QuizOption('d', r""" <h4>(D)   580 mikrometer</h4>"""),
          QuizOption('e', r""" <h4>(E)   1.160 mikrometer</h4>"""),
        ],
        correctOptionId: 'c',
        pembahasan: r"""  <p>
          <h4>Pembahasan: </h4> <br>
          Diketahui:	<br>
          \(T_1=T \) <br>
          \(T_2=2T \) <br>
          \(λ_m=580×10^{-6} m \) <br>
          Ditanya: \(λ_m^{'}? \) <br>
          Jawab: <br>
          \(λ_m  T=C \) <br> 
          \(C=2,898×10^{-3}  m K \) <br> 
          maka <br>
          \(λ_m  T_1=λ_m^{'}  T_2 \)  <br> 
          \((580×10^{-6}  m)  × T=λ_m^{'}×2T \)  <br>
          λ_m^'=\((580×10^{-6}  m)× \frac{1}{2} \)  <br>
          λ_m^'= \(290×10^{-6}  m \)  <br>
          Jadi panjang gelombangnya berubah menjadi 290 mikrometer. </p>
          """),
    // soal no 7
    Quiz(
      statement: r"""
                  Perhatikan pernyataan-pernyataan berikut!
                  <h5>
                  <ol type='i'>
                    <li>i) Cahaya terdiri atas paket-paket energi.</li>
                  
                    <li>ii) Energi foton dituliskan dalam persamaan \(E=\frac{hc}{\lambda} \) </li>
                   
                    <li>iii) Tidak semua foton merupakan gelombang elektromagnetik.</li>
                  
                    <li>iv) Foton memiliki kecepatan yang melebihi kecepatan cahaya.</li>
                  
                    <li>v) Efek fotolistrik menerapkan teori kuantum Planck.</li>
                  </ol>
                  </h5>
                  Pernyataan yang benar berdasarkan teori kuantum Planck terdapat pada…
                    """,
      options: [
        QuizOption('a', r""" <h4>(A)   i), ii), dan iii)</h4>"""),
        QuizOption('b', r""" <h4>(B)   i), ii), dan v)</h4>"""),
        QuizOption('c', r""" <h4>(C)   ii), iii), dan iv)</h4>"""),
        QuizOption('d', r""" <h4>(D)   ii), iii), dan v)</h4>"""),
        QuizOption('e', r""" <h4>(E)   iii), iv), dan v)</h4>"""),
      ],
      correctOptionId: 'b',
      pembahasan: r""" <p>
          <h4>Pembahasan: </h4> <br>
          Cahaya terdiri dari paket-paket energi berupa foton. Energi foton 
          dirumuskan dengan \(E=h v=h \frac{c}{λ}. \) Foton memiliki sifat gelombang elektromagnetik 
          dan partikel. Kecepatan foton adalah c sama dengan kecepatan cahaya itu sendiri. 
          Karena sifatnya ini, Max Planck mengemukakan teori kuantum yang mendasari 
          fenomena efek fotolistrik yang dikemukakan Albert Einstein melalui hasil 
          eksperimennya. Jadi pernyataan i), ii), dan v) benar. </p>
      """,
    ),
    //no 8
    Quiz(
        statement: r"""<h4>Sebuah bintang memiliki suhu permukaan 5.796 K. 
    Bintang tersebut akan memancarkan spektrum pada panjang gelombang…
    \(C = 2,898 \times 10^{-2} mK \)
            </h4>""",
        options: [
          QuizOption('a', r""" <h4>(A)   1.250 Å</h4>"""),
          QuizOption('b', r""" <h4>(B)   2.500 Å</h4>"""),
          QuizOption('c', r""" <h4>(C)   3.750 Å</h4>"""),
          QuizOption('d', r""" <h4>(D)   5.000 Å</h4>"""),
          QuizOption('e', r""" <h4>(E)   6.250 Å</h4>"""),
        ],
        correctOptionId: 'd',
        pembahasan: r""" <p>
            <h4>Pembahasan: </h4> <br>
            Diketahui:	<br>
            \(T=5.796 K \) <br>
            \(C=2,898×10^{-3}  m K \) <br>
            Ditanya: \(λ_m? \) <br>
            Jawab: <br>
            \(λ_m  T=C \) <br> 
            \(λ_m=C/T= \frac{2,898×10^{-3}  m K}{5.796 K} \) <br>
            \(λ_m=5.000×10^{-10}  m=5.000 Å \) <br>
            Jadi panjang gelombang yang memancarkan intensitas radiasi maksimum adalah \(5.000 Å.\) </p>
        """),
    // no 9
    Quiz(
      statement: r"""
            Perhatikan pernyataan-pernyataan berikut!
            <h5>
                  <ol type='i'>
                    <li>i) Makin tinggi suhu suatu benda, benda tersebut akan cenderung berwarna merah.</li>
                  
                    <li>ii) Makin tinggi suhu suatu benda, frekuensi gelombang radiasi benda tersebut makin tinggi.</li>
                   
                    <li>iii) Intensitas radiasi benda hitam tidak bergantung pada temperatur.</li>
                  
                    <li>iv) Makin rendah suhu suatu benda, maka benda tersebut akan cenderung berwarna merah.</li>
                  
                  </ol>
                  </h5>
                  Berdasarkan hukum pergeseran Wien, pernyataan yang benar adalah…
            """,
      options: [
        QuizOption('a', r""" <h4>(A)   i), ii), dan iii) </h4>"""),
        QuizOption('b', r""" <h4>(B)   i) dan iii)</h4>"""),
        QuizOption('c', r""" <h4>(C)   ii) dan iv) </h4>"""),
        QuizOption('d', r""" <h4>(D)   hanya iv) </h4>"""),
        QuizOption('e', r""" <h4>(E)   semua pernyataan benar </h4>"""),
      ],
      correctOptionId: 'c',
      pembahasan: r""" <p>
        <h4>Pembahasan: </h4> <br>
        Hukum pergeseran Wien:
        \(λ_m=C×\frac{1}{T} \) maka \(λ~ \frac{1}{T}~ \frac{1}{E} \)
        Semakin tinggu suhu maka semakin renda panjang gelombang sehingga benda cenderung 
        berwarna biru. Keadaan sebaliknya mengindikasikan benda cenderung berwarna merah 
        (cahaya tampak panjang gelombang lebih tinggi daripada biru). 
        Nilai \(E=n h v \) sehingga makin tinggi suhu suatu benda, 
        frekuensi gelombang radiasi benda tersebut makin tinggi.
        Jadi pernyataan ii) dan iv) benar. </p>
      """,
    ),
    //no 10
    Quiz(
        statement: r"""<h4>Bintang X memiliki intensitas maksimum pada suhu
            \(1659^oC \) Jika tetapan \(Wien = 2,898 \times 10^{-3} mK \),
            panjang gelombang yang terdeteksi pada radiasi bintang X adalah…
            </h4>""",
        options: [
          QuizOption('a', r""" <h4>(A)   125 nm</h4>"""),
          QuizOption('b', r""" <h4>(B)   200 nm</h4>"""),
          QuizOption('c', r""" <h4>(C)   250 nm</h4>"""),
          QuizOption('d', r""" <h4>(D)   1.250 nm</h4>"""),
          QuizOption('e', r""" <h4>(E)   1.500 nm</h4>"""),
        ],
        correctOptionId: 'e',
        pembahasan: r""" <p>
            <h4>Pembahasan:</h4> <br>
            Diketahui:	<br>
            \(T=〖1.659〗^o \) <br>
            \(C=1.932 K \) <br>
            \(C=2,898×10^{-3}  m K \) <br>
            Ditanya: \(λ_m? \) <br>
            Jawab: <br>
            \(λ_m  T=C \) <br>
            \(λ_m=C/T= \frac{2,898×10^{-3}  m K}{1.932 K} \) <br>
            \(λ_m=1.500×10^{-9}  m=1.500 nm \) <br>
            Jadi panjang gelombang yang memiliki intensitas radiasi maksimum adalah \(λ_m=1.500 nm. \)</p>

      """),
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
                    "Uji\nKemampuan 1",
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
                          print(nilai);
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
                                  headTitle: 'Uji \nKemampuan 1',
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
