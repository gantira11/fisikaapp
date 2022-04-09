import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/common/etc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tex/flutter_tex.dart';

class SoalKompetensi extends StatefulWidget {
  final TeXViewRenderingEngine renderingEngine;
  const SoalKompetensi(
      {Key? key, this.renderingEngine = const TeXViewRenderingEngine.katex()})
      : super(key: key);

  @override
  State<SoalKompetensi> createState() => _SoalKompetensiState();
}

class _SoalKompetensiState extends State<SoalKompetensi> {
  int currentQuizIndex = 0;
  String selectedOptionId = "";
  bool isWrong = false;
  bool showDiscussion = false;
  List<Quiz> quizList = [
    // no 1
    Quiz(statement: r"""
                 Sebuah benda hitam memancarkan radiasi gelombang elektro-magnetik. 
                 Besarnya laju energi kalor sebanding dengan…
                    """, options: [
      QuizOption('a', r"""(A)   Massa benda."""),
      QuizOption('b', r"""(B)   Suhu mutlak benda."""),
      QuizOption('c', r"""(C)   Massa jenis benda."""),
      QuizOption('d', r"""(D)   Pangkat empat dari suhu mutlak benda."""),
      QuizOption('e', r"""(E)   Pangkat empat dari luas permukaan benda."""),
    ], correctOptionId: 'd'),
    // no 2
    Quiz(statement: r"""
                Grafik berikut menunjukkan hubungan antara intensitas radiasi (R) 
                dengan panjang gelombang \(\lambda \) dalam Å pada radiasi energi oleh benda hitam. 
                Jika konstanta Wien adalah \(2,90 \times 10^{-3} mK \), maka besar suhu (T) permukaan benda adalah…

                    """, options: [
      QuizOption('a', r"""(A)   6.000 K"""),
      QuizOption('b', r"""(B)   5.100 K"""),
      QuizOption('c', r"""(C)   4.833 K"""),
      QuizOption('d', r"""(D)   2.900 K"""),
      QuizOption('e', r"""(E)   1.667 K"""),
    ], correctOptionId: 'c'),
    //no 3
    Quiz(statement: r"""
                 Intensitas radiasi yang diterima dinding tungku pemanas ruangan 
                 adalah \(66,3 Wm^{-2} \). Jika tungku ruangan dianggap benda hitam dan 
                 radiasi gelombang elektromagnetik mempunyai panjang gelombang 600 nm, 
                 maka jumlah foton yang mengenai dinding persatuan luas persatuan waktu adalah…
                 <br>
                 ( \(h = 2 \times 10^{19} Js \), \(c = 3,10^8 ms^{-1} \))

                    """, options: [
      QuizOption('a', r"""(A)   \(2 \times 10^{19} foton \)"""),
      QuizOption('b', r"""(B)   \(2 \times 10^{20} foton \)"""),
      QuizOption('c', r"""(C)   \(2 \times 10^{21} foton \)"""),
      QuizOption('d', r"""(D)   \(5 \times 10^{20} foton \)"""),
      QuizOption('e', r"""(E)   \(5 \times 10^{21} foton \)"""),
    ], correctOptionId: 'b'),

    // no 4
    Quiz(statement: r"""
                 Cahaya biru mempunyai panjang gelombang yang lebih pendek daripada 
                 cahaya merah. Keduanya ditembakkan dengan intensitas yang sama pada 
                 dua logam identik sehingga mampu melepaskan sejumlah elektron dari 
                 permukaan logam tersebut. Pernyataan berikut yang benar adalah…


                    """, options: [
      QuizOption('a',
          r"""(A)   Sinar biru dapat melepaskan elektron dalam jumlah lebih banyak."""),
      QuizOption('b',
          r"""(B)   Sinar merah dapat melepaskan elektron dalam jumlah lebih banyak."""),
      QuizOption('c',
          r"""(C)   Kedua sinar dapat melepaskan elektron dalam jumlah yang sama."""),
      QuizOption('d',
          r"""(D)   Sinar merah dapat melepaskan elektron dengan kecepatan maksimum lebih besar."""),
      QuizOption('e',
          r"""(E)   Kedua sinar dapat me-lepaskan elektron dengan kecepatan maksimum yang sama."""),
    ], correctOptionId: 'c'),
    // soal no 5
    Quiz(statement: r"""
                Dari beberapa pernyataan di bawah ini, pernyataan yang benar 
                mengenai gejala kuantisasi pada radiasi elektromagnetik adalah…


                    """, options: [
      QuizOption('a',
          r"""(A)   Radiasi elektromagnetik hanya berperilaku sebagai gelombang."""),
      QuizOption('b',
          r"""(B)   Besarnya energi foton berbanding lurus dengan frekuensi."""),
      QuizOption('c',
          r"""(C)   Momentum foton dinyatakan sebagai hasil kali energi dan kecepatan."""),
      QuizOption('d',
          r"""(D)   Panjang gelombang foton berbanding terbalik dengan konstanta Planck."""),
      QuizOption('e',
          r"""Energi foton merupakan perkalian antara mo-mentum dan panjang gelombang."""),
    ], correctOptionId: 'b'),
    // soal no 6
    Quiz(statement: r"""
                 Perhatikan pernyataan di bawah ini!
                  <br><br>
                  <ol type='i'>
                    <li>i) Elektron yang terlepas dari peristiwa efek fotolistrik disebut dengan fotoelektron.</li>
                  
                    <li>ii) Laju elektron yang terlepas bergantung pada intensitas cahaya yang menyinari permukaan logam. </li>
                   
                    <li>iii) Energi kinetik elektron terlepas bergantung pada panjang gelombang cahaya yang mengenai permukaan logam.</li>
                  
                    <li>iv) Frekuensi ambang tidak mempengaruhi energi yang dibutuhkan foton untuk melepaskan elektron dari permukaan logam.</li>
                  </ol>
                  <br><br>
                  Pernyataan yang benar tentang fotolistrik adalah…


                    """, options: [
      QuizOption('a', r"""(A)   1) dan 2) """),
      QuizOption('b', r"""(B)   1) dan 3)"""),
      QuizOption('c', r"""(C)   2) dan 3)"""),
      QuizOption('d', r"""(D)   2) dan 4)"""),
      QuizOption('e', r"""(E)   3) dan 4)"""),
    ], correctOptionId: 'd'),

    // no 7
    Quiz(statement: r"""
                 Sebuah partikel elektron bermassa \(9 \times 10^{-31} kg \) bergerak dengan 
                 laju \(3,3 \times 10^6 m/s \). Jika konstanta Planck \(h = 6,6 \times 10^{-34} Js \), 
                 panjang gelombang de Broglie dari elektron adalah…


                    """, options: [
      QuizOption('a', r"""(A)   \(2,20 \times 10^{-10} m \) """),
      QuizOption('b', r"""(B)   \(4,80 \times 10^{-10} m \)"""),
      QuizOption('c', r"""(C)   \(5,00 \times 10^{-10} m \) """),
      QuizOption('d', r"""(D)   \(6,67 \times 10^{-10} m \)"""),
      QuizOption('e', r"""(E)   \(8,20 \times 10^{-10} m \) """),
    ], correctOptionId: 'b'),
    // no 8
    Quiz(statement: r"""
                 Cahaya dengan frekuensi tertentu dijatuhkan pada permukaan 
                 suatu logam sehingga fotoelektron dengan energi kinetik 
                 maksimum sebesar \(1,6 \times 10^{-19} J \) terlepas dari logam tersebut. 
                 Jika diketahui fungsi kerja logam tersebut adalah \(3,7 \times 10^{-19} J \) 
                 dan konstanta Planck \(h = 6,63 \times 10^{-34} Js \), maka fre-kuensi cahaya 
                 yang mengenai permukaan logam adalah sekitar…



                    """, options: [
      QuizOption('a', r"""(A)  \(0,8 \times 10^{14} \) """),
      QuizOption('b', r"""(B)   \(8,0 \times 10^{14} \)  """),
      QuizOption('c', r"""(C)   \(4,0 \times 10^{14} \)  """),
      QuizOption('d', r"""(D)   \(0,4 \times 10^{14} \) """),
      QuizOption('e', r"""(E)   \(2,0 \times 10^{14} \)"""),
    ], correctOptionId: 'e'),

    // no 9
    Quiz(statement: r"""
                 Permukaan sebuah keping logam natrium disinari dengan seberkas 
                 foton yang memiliki energi 4,43 eV. Jika fungsi kerja natrium adalah 2,28 eV, 
                 maka energi kinetik maksimum yang dimiliki elektron yang dihasilkan adalah…


                    """, options: [
      QuizOption('a', r"""(A)   2,15 eV  """),
      QuizOption('b', r"""(B)   2,28 eV  """),
      QuizOption('c', r"""(C)   4,56 eV  """),
      QuizOption('d', r"""(D)   6,71 eV """),
      QuizOption('e', r"""(E)   8,86 eV """),
    ], correctOptionId: 'd'),
    // no 10
    Quiz(statement: r"""
                Untuk mendeteksi struktur sebuah inti atom yang memiliki 
                jari-jari \(10^{-15} \) meter, seberkas elektron dari sebuah akselerator 
                partikel ditembakkan pada sebuah inti padat yang mengandung kerapatan inti, 
                maka akan terjadi efek difraksi dengan ukuran inti dapat ditentukan. 
                Dalam kasus ini, besar momentum berkas sinar elektron yang diperlukan adalah…
                <br>
                ( \(h = 6,63 \times 10^{-34} Js \) )
                    """, options: [
      QuizOption('a', r"""(A)  \(6,63 \times 10^{-19} kgm/s \)  """),
      QuizOption('b', r"""(B)   \(13,2 \times 10^{-19} kgm/s \)  """),
      QuizOption('c', r"""(C)   \(63,3 \times 10^{-19} kgm/s \)  """),
      QuizOption('d', r"""(D)   \(0,33 \times 10^{-19} kgm/s \) """),
      QuizOption('e', r"""(E)   \(6,33 \times 10^{-19} kgm/s \) """),
    ], correctOptionId: 'd'),
    Quiz(statement: r"""
                Sebuah elektron bermassa \(9,1 \times 10^{-31} kg \) bergerak dari keadaan
                diam melewati beda potensial 100 V. Panjang gelombang de Broglie elektron 
                tersebut adalah…
                <br>
                ( \(e = 1,6 \times 10^{-19} C \), dan \(h = 6,6 \times 10^{-34} Js \) )
                    """, options: [
      QuizOption('a', r"""(A)  0,123 nm """),
      QuizOption('b', r"""(B)   1,23 nm  """),
      QuizOption('c', r"""(C)   12,3 nm  """),
      QuizOption('d', r"""(D)   123 nm """),
      QuizOption('e', r"""(E)   1230 nm """),
    ], correctOptionId: 'd'),
    Quiz(statement: r"""
                Sebuah foton dengan panjang gelombang awal 0,4 nm 
                menumbuk elektron yang diam. Setelah bertumbukkan, 
                foton dihamburkan dengan sudut \(120^o \) terhadap arah semula. 
                Panjang gelombang foton setelah tumbukkan adalah…
                    """, options: [
      QuizOption('a', r"""(A)  0,4000 nm """),
      QuizOption('b', r"""(B)  0,4036 nm  """),
      QuizOption('c', r"""(C)  0,4136 nm """),
      QuizOption('d', r"""(D)  0,4660 nm """),
      QuizOption('e', r"""(E)  0,4760 nm """),
    ], correctOptionId: 'd'),
    Quiz(statement: r"""
                Frekuensi foton yang dihamburkan oleh 
                elektron bebas akan menjadi lebih kecil 
                dibandingkan saat datang adalah hasil dari…

                    """, options: [
      QuizOption('a', r"""(A)  Efek Compton """),
      QuizOption('b', r"""(B)  Efek fotolistrik  """),
      QuizOption('c', r"""(C)  Produksi pasangan """),
      QuizOption('d', r"""(D)  Produksi sinar-X """),
      QuizOption('e', r"""(E)  Radiasi benda hitam """),
    ], correctOptionId: 'd'),
    // no 14
    Quiz(statement: r"""
                Sebuah atom memancarkan radiasi dengan panjang gelombang  
                ketika sebuah elektronnya melakukan transisi dari tingkat energi E1 ke E2. 
                Manakah dari persamaan berikut yang menyatakan hubungan antara , E1, dan E2?

                    """, options: [
      QuizOption('a',
          r"""(A)  \(\lambda = \frac{h}{c}\left ( E_{1} - E_{2} \right  ) \) """),
      QuizOption('b', r"""(B)  \(hc \left ( E_{1} - E_{2} \right  )  \)  """),
      QuizOption('c',
          r"""(C)  \(\lambda = \frac{hc}{\left (E_{1} - E_{2}  \right )} \) """),
      QuizOption('d',
          r"""(D)  \(\lambda = \frac{c}{h}\left ( E_{1} - E_{2} \right  ) \) """),
      QuizOption('e',
          r"""(E)  \(\lambda = \frac{\left (E_{1} - E_{2}  \right )}{hc} \) """),
    ], correctOptionId: 'd'),
    // no 15
    Quiz(statement: r"""
               Sebuah elektron energi totalnya n kali energi diamnya. Jika massa 
               elektron adalah \(m_{0 } \), konstanta Planck adalah h, dan kelajuan cahaya 
               di ruang hampa adalah c, maka panjang gelombang de Broglie elektron 
               tersebut adalah…

                    """, options: [
      QuizOption('a', r"""(A)  \(\frac{h\sqrt{n^2 - 1}}{m_{0} c} \) """),
      QuizOption('b', r"""(B)  \(\frac{h\sqrt{n^2 + 1}}{m_{0} c} \)  """),
      QuizOption('c', r"""(C)  \(\frac{h}{nm_{0}c} \) """),
      QuizOption('d', r"""(D)  \(\frac{h}{\sqrt{n^2 - 1} m_{0}c}\) """),
      QuizOption('e', r"""(E)  \(\frac{h}{\sqrt{n^2 + 1} m_{0}c} \) """),
    ], correctOptionId: 'd'),
    // no 16
    Quiz(statement: r"""
               Grafik berikut menunjukkan hubungan antara energi kinetik maksimum 
               elektron (Ek) terhadap frekuensi foton (f) pada efek fotolistrik. 
               Jika konstanta Planck \(6,6 \times 10^{-34} Js \) dan 1 eV = \(1,6 \times 10^{-19} joule \), maka 
               besar f (dalam Hz) adalah…


                    """, options: [
      QuizOption('a', r"""(A)  \(48 \times 10^{14} \) """),
      QuizOption('b', r"""(B)  \(21 \times 10^{14} \)  """),
      QuizOption('c', r"""(C)  \(14 \times 10^{14} \) """),
      QuizOption('d', r"""(D)  \(9,5 \times 10^{14} \) """),
      QuizOption('e', r"""(E)  \(8,9 \times 10^{14} \) """),
    ], correctOptionId: 'd'),
    // no 17
    Quiz(statement: r"""
               Sebuah partikel yang massanya \(4 \times 10^{-31} kg \) bergerak dengan 
               kecepatan \(1,5 \times 10^8 m/s \). Bila tetapan Planck \(6,63 \times 10^{-34} Js \), 
               maka panjang gelombang partikel tersebut adalah…



                    """, options: [
      QuizOption('a', r"""(A)  0,1 Å """),
      QuizOption('b', r"""(B)  0,2 Å  """),
      QuizOption('c', r"""(C)  0,6 Å """),
      QuizOption('d', r"""(D)  0,8 Å """),
      QuizOption('e', r"""(E)  1,0 Å """),
    ], correctOptionId: 'd'),
    // no 18
    Quiz(statement: r"""
               Sebuah benda hitam bersuhu T Kelvin meradiasikan energi dalam 
               bentuk gelombang elektro-magnetik. Bila \(\lambda_{max} \) dan \(f_{max} \) adalah 
               panjang gelombang dan frekuensi dari gelombang yang meradiasikan 
               kalor dengan intensitas maksimum, maka…



                    """, options: [
      QuizOption(
          'a', r"""(A)  \(\lambda_{max} \) sebanding dengan \(T^4 \) """),
      QuizOption('b', r"""(B)  \(f_{max} \) sebanding dengan \(T^4 \)  """),
      QuizOption('c', r"""(C)  \(\lambda_{max} \) sebanding dengan \(T \) """),
      QuizOption(
          'd', r"""(D)  \(f_{max} \) sebanding dengan \(\frac{1}{T} \) """),
      QuizOption('e',
          r"""(E)  \(\lambda_{max} \) sebanding dengan \(\frac{1}{T} \) """),
    ], correctOptionId: 'd'),
    // no 19
    Quiz(statement: r"""
               Permukaan logam tertentu mempunyai fungsi kerja W joule. 
               Bila konstanta Planck h joule sekon, maka energi maksimum 
               fotoelektron yang dihasilkan oleh cahaya berfrekuensi  Hz adalah
              (dalam joule)…



                    """, options: [
      QuizOption('a', r"""(A)  W+hv """),
      QuizOption('b', r"""(B)  W(hv)  """),
      QuizOption('c', r"""(C)  W-hv """),
      QuizOption('d', r"""(D)  \(\frac{hv}{W} \)  """),
      QuizOption('e', r"""(E)  hv+W """),
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
                    "Uji\nKompetensi",
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
                          ? TeXViewImage.asset(currentQuizIndex == 2
                              ? "assets/ujikompetensi/soalno2.PNG"
                              : "")
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
                      visible: currentQuizIndex < 20,
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
                          child: Text(currentQuizIndex == 19
                              ? "Selesai"
                              : "Berikutnya"),
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
