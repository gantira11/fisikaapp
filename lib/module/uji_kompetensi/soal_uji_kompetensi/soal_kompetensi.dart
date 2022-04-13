import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/common/etc.dart';
import 'package:fisikaapp/module/hasil_pembahasan/hasil_screen.dart';
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
  int nilai = 0;
  List<String> jawab = [];
  String jawaban = "";

  List<Quiz> quizList = [
    // no 1
    Quiz(
      statement: r"""
                 Sebuah benda hitam memancarkan radiasi gelombang elektro-magnetik. 
                 Besarnya laju energi kalor sebanding dengan…
                    """,
      options: [
        QuizOption('a', r"""(A)   Massa benda."""),
        QuizOption('b', r"""(B)   Suhu mutlak benda."""),
        QuizOption('c', r"""(C)   Massa jenis benda."""),
        QuizOption('d', r"""(D)   Pangkat empat dari suhu mutlak benda."""),
        QuizOption('e', r"""(E)   Pangkat empat dari luas permukaan benda."""),
      ],
      correctOptionId: 'd',
      pembahasan: r"""<p>
      <h4>Pembahasan: <h4> <br>
      Hukum Stefan-Boltzman menyatakan: <br>
      \(P= \frac{Q}{t} = e σ A T^4 \) <br>
      Laju energi kalor sebanding dengan pangkat empat dari suhu mutlak benda.

      </p>""",
    ),

    // no 2
    Quiz(
      statement: r"""
                Grafik berikut menunjukkan hubungan antara intensitas radiasi (R) 
                dengan panjang gelombang \(\lambda \) dalam Å pada radiasi energi oleh benda hitam. 
                Jika konstanta Wien adalah \(2,90 \times 10^{-3} mK \), maka besar suhu (T) permukaan benda adalah…

                    """,
      imgName: "assets/ujikompetensi/ujikom_2.png",
      options: [
        QuizOption('a', r"""(A)   6.000 K"""),
        QuizOption('b', r"""(B)   5.100 K"""),
        QuizOption('c', r"""(C)   4.833 K"""),
        QuizOption('d', r"""(D)   2.900 K"""),
        QuizOption('e', r"""(E)   1.667 K"""),
      ],
      correctOptionId: 'c',
      pembahasan: r"""<p>
      <h4>Pemabahasan: </h4> <br>
      Diketahui:	<br>
      \(λ=6.000 Å=6×10^{-7}  m \) <br>
      \(C=2,90×10^{-3}  m.K \) <br>
      Ditanya: \(T? \) <br>
      Jawab: <br>
      \(λ_maks  T=C  \) <br>
      \(6×10^{-7} m×T=2,90×10^{-3}  m.K  \) <br>
      \(T= \frac{2,90×10^{-3}}{6×10^{-7}} =4.833 K \) <br>
      Jadi suhu permukaan benda adalah \(4.833 K. \)

      </p>
      """,
    ),
    //no 3
    Quiz(
      statement: r"""
                 Intensitas radiasi yang diterima dinding tungku pemanas ruangan 
                 adalah \(66,3 Wm^{-2} \). Jika tungku ruangan dianggap benda hitam dan 
                 radiasi gelombang elektromagnetik mempunyai panjang gelombang 600 nm, 
                 maka jumlah foton yang mengenai dinding persatuan luas persatuan waktu adalah…
                 <br>
                 ( \(h = 2 \times 10^{19} Js \), \(c = 3,10^8 ms^{-1} \))

                    """,
      options: [
        QuizOption('a', r"""(A)   \(2 \times 10^{19} foton \)"""),
        QuizOption('b', r"""(B)   \(2 \times 10^{20} foton \)"""),
        QuizOption('c', r"""(C)   \(2 \times 10^{21} foton \)"""),
        QuizOption('d', r"""(D)   \(5 \times 10^{20} foton \)"""),
        QuizOption('e', r"""(E)   \(5 \times 10^{21} foton \)"""),
      ],
      correctOptionId: 'b',
      pembahasan: r"""<p>
        <h4>Pembahasan: </h4> <br>
        Diketahui:	<br>
        \(R=66,3 W×m^{-2} \) <br>
        \(λ=600 nm \) <br>
        \(h=6,63×10^{-34}  J.s \) <br>
        \(c=3×10^8  m.s^{-1} \) <br>
        Ditanya: \( \frac{n}{A∙t}? \) <br>
        Jawab: <br>
        Intensitas radiasi <br>
        \(R= \frac{P}{A} = \frac{E}{A∙t} \) <br>
        Sedangkan energi foton adalah <br>
        \(E=n h v=n \frac{hc}{λ} \) <br>
        Banyaknya foton tiap satuan luas tiap satuan waktu adalah <br>
        \( \frac{n}{A∙t} = \frac{R}{hc} λ  \) <br>
        Maka: <br>
        \( \frac{n}{A∙t} = \frac{66,3(600×10^{-9})}{6,63×10^{-34} (3×10^8) }=2×10^20 \) <br>
        Jadi, banyaknya foton tiap satuan luas tiap satuan waktu sebanyak \(2×10^{20}. \)

      </p>""",
    ),

    // no 4
    Quiz(
      statement: r"""
                 Cahaya biru mempunyai panjang gelombang yang lebih pendek daripada 
                 cahaya merah. Keduanya ditembakkan dengan intensitas yang sama pada 
                 dua logam identik sehingga mampu melepaskan sejumlah elektron dari 
                 permukaan logam tersebut. Pernyataan berikut yang benar adalah…


                    """,
      options: [
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
      ],
      correctOptionId: 'c',
      pembahasan: r"""<p>
        <h4>Pembahasan: </h4> <br>
        Lepas tidaknya elektron dipengaruhi oleh frekuensi cahaya yang digunakan. 
        Sementara intensitas hanya memengaruhi banyaknya elektron yang terlepas dari logam. 
        Jadi, jika kedua cahaya ditembakkan dengan intensitas yang sama, maka banyaknya 
        elektron yang terlepas jumlahnya sama.

    </p>""",
    ),
    // soal no 5
    // Quiz(
    //   statement: r"""
    //             Dari beberapa pernyataan di bawah ini, pernyataan yang benar
    //             mengenai gejala kuantisasi pada radiasi elektromagnetik adalah…

    //                 """,
    //   options: [
    //     QuizOption('a',
    //         r"""(A)   Radiasi elektromagnetik hanya berperilaku sebagai gelombang."""),
    //     QuizOption('b',
    //         r"""(B)   Besarnya energi foton berbanding lurus dengan frekuensi."""),
    //     QuizOption('c',
    //         r"""(C)   Momentum foton dinyatakan sebagai hasil kali energi dan kecepatan."""),
    //     QuizOption('d',
    //         r"""(D)   Panjang gelombang foton berbanding terbalik dengan konstanta Planck."""),
    //     QuizOption('e',
    //         r"""Energi foton merupakan perkalian antara mo-mentum dan panjang gelombang."""),
    //   ],
    //   correctOptionId: 'b',
    //   pembahasan: r"""<p>
    //     <h4>Pembahasan:</h4> <br>
    //     Energi foton adalah energi dari tiap-tiap partikel cahaya yang terkuantisasi. <br>
    //     \(E=h v \) <br>
    //     Sehingga besarnya energi foton sebanding dengan frekuensi gelombang yang dipancarkan.

    // </p>""",
    // ),
    // // soal no 6
    // Quiz(
    //   statement: r"""
    //              Perhatikan pernyataan di bawah ini!
    //               <br><br>
    //               <ol type='i'>
    //                 <li>i) Elektron yang terlepas dari peristiwa efek fotolistrik disebut dengan fotoelektron.</li>

    //                 <li>ii) Laju elektron yang terlepas bergantung pada intensitas cahaya yang menyinari permukaan logam. </li>

    //                 <li>iii) Energi kinetik elektron terlepas bergantung pada panjang gelombang cahaya yang mengenai permukaan logam.</li>

    //                 <li>iv) Frekuensi ambang tidak mempengaruhi energi yang dibutuhkan foton untuk melepaskan elektron dari permukaan logam.</li>
    //               </ol>
    //               <br><br>
    //               Pernyataan yang benar tentang fotolistrik adalah…

    //                 """,
    //   options: [
    //     QuizOption('a', r"""(A)   1) dan 2) """),
    //     QuizOption('b', r"""(B)   1) dan 3)"""),
    //     QuizOption('c', r"""(C)   2) dan 3)"""),
    //     QuizOption('d', r"""(D)   2) dan 4)"""),
    //     QuizOption('e', r"""(E)   3) dan 4)"""),
    //   ],
    //   correctOptionId: 'd',
    //   pembahasan: r"""<p>
    //     <h4>Pembahasan: </h4> <br>
    //     Elektron yang terpancar akibat efek fotolistrik disebut foto-elektron.
    //     Laju foto-elektron dipengaruhi oleh frekuensi foton. Energi kinetik foto-elektron
    //     dipengaruhi energi foton yang juga bergantung pada panjang gelombang.
    //     Energi yang diperlukan foton untuk melepaskan elektron dari permukaan logam
    //     dipengaruhi oleh frekuensi ambang logam.

    // </p>""",
    // ),

    // // no 7
    // Quiz(
    //   statement: r"""
    //              Sebuah partikel elektron bermassa \(9 \times 10^{-31} kg \) bergerak dengan
    //              laju \(3,3 \times 10^6 m/s \). Jika konstanta Planck \(h = 6,6 \times 10^{-34} Js \),
    //              panjang gelombang de Broglie dari elektron adalah…

    //                 """,
    //   options: [
    //     QuizOption('a', r"""(A)   \(2,20 \times 10^{-10} m \) """),
    //     QuizOption('b', r"""(B)   \(4,80 \times 10^{-10} m \)"""),
    //     QuizOption('c', r"""(C)   \(5,00 \times 10^{-10} m \) """),
    //     QuizOption('d', r"""(D)   \(6,67 \times 10^{-10} m \)"""),
    //     QuizOption('e', r"""(E)   \(8,20 \times 10^{-10} m \) """),
    //   ],
    //   correctOptionId: 'b',
    //   pembahasan: r"""<p>
    //     <h4>Pembahasan: </h4> <br>
    //     Diketahui:	<br>
    //     \(m=9×10^{-31}  kg  \) <br>
    //     \(v=3,3×10^6 m/s \) <br>
    //     \(h=6,6×10^{-34}  J.s \) <br>
    //     Ditanya: \(λ? \) <br>
    //     Jawab: <br>
    //     Panjang gelombang de Broglie <br>
    //     \(λ= \frac{h}{mv}  \) <br>
    //     \(λ= \frac{6,6×10^{-34}  J.s}{(9×10^{-31}  kg)(3,3×10^6 m.s^{-1} )} =2,20×10^{-10} \) <br>
    //     Jadi, panjang gelombang de Broglie dari elektron \(λ=2,20×10^{-10} m. \)

    // </p>""",
    // ),
    // no 8
    Quiz(
      statement: r"""
                 Cahaya dengan frekuensi tertentu dijatuhkan pada permukaan 
                 suatu logam sehingga fotoelektron dengan energi kinetik 
                 maksimum sebesar \(1,6 \times 10^{-19} J \) terlepas dari logam tersebut. 
                 Jika diketahui fungsi kerja logam tersebut adalah \(3,7 \times 10^{-19} J \) 
                 dan konstanta Planck \(h = 6,63 \times 10^{-34} Js \), maka fre-kuensi cahaya 
                 yang mengenai permukaan logam adalah sekitar…



                    """,
      options: [
        QuizOption('a', r"""(A)  \(0,8 \times 10^{14} \) """),
        QuizOption('b', r"""(B)   \(8,0 \times 10^{14} \)  """),
        QuizOption('c', r"""(C)   \(4,0 \times 10^{14} \)  """),
        QuizOption('d', r"""(D)   \(0,4 \times 10^{14} \) """),
        QuizOption('e', r"""(E)   \(2,0 \times 10^{14} \)"""),
      ],
      correctOptionId: 'e',
      pembahasan: r"""<p>
        <h4>Pembahasan: </h4> <br>
        Diketahui:	<br>
        \(E_k=1,6×10^{-19} J \) <br>
        \(W_0=3,7×10^{-19} J \) <br>
        \(h=6,63×10^{-34}  J.s \) <br>
        Ditanya: \(f? \) <br>
        Jawab: <br>
        \(E_k = hf-hf_0 →E_k = hf-W_0 \) <br>
        \(→hf=E_k+W_0  \) <br>
        \(→f= \frac{E_k+W_0}/{h} \) <br>

        \(f= \frac{(1,6×10^{-19} )+ (3,7×10^{-19})}{6,63×10^{-34} } \) <br>
        \(f= \frac{5,3×10^{-19}}{6,63×10^{-34} }=0,799×10^{15} \) <br>
        \(f≈8,0×10^14 Hz. \) <br>
        Jadi, frekuensi cahaya yang mengenai permukaan logam adalah sekitar \(8,0×10^{14} Hz \)

      </p>""",
    ),

    // // no 9
    // Quiz(
    //   statement: r"""
    //              Permukaan sebuah keping logam natrium disinari dengan seberkas
    //              foton yang memiliki energi 4,43 eV. Jika fungsi kerja natrium adalah 2,28 eV,
    //              maka energi kinetik maksimum yang dimiliki elektron yang dihasilkan adalah…

    //                 """,
    //   options: [
    //     QuizOption('a', r"""(A)   2,15 eV  """),
    //     QuizOption('b', r"""(B)   2,28 eV  """),
    //     QuizOption('c', r"""(C)   4,56 eV  """),
    //     QuizOption('d', r"""(D)   6,71 eV """),
    //     QuizOption('e', r"""(E)   8,86 eV """),
    //   ],
    //   correctOptionId: 'd',
    //   pembahasan: r"""<p>
    //   <h4>Pembahasan: </h4> <br>
    //   Diketahui:	<br>
    //   \(E=4,43 eV \) <br>
    //   \(W_0=2,28 eV \) <br>
    //   Ditanya: \(E_k? \) <br>
    //   Jawab:<br>
    //   Pada efek fotolistrik energi kinetik dari elektron yang terlepas dari logam dinyatakan dengan persamaan <br>
    //   \(E_k=E-W_0 \) <br>
    //   Sehingga <br>
    //   \(E_k= 4,43 eV – 2,28 eV = 2,15 eV\) <br>
    //   Jadi, energi kinetik maksimum yang dimiliki elektron yang dihasilkan adalah \(2,15 eV. \)

    // </p>""",
    // ),
    // // no 10
    // Quiz(
    //   statement: r"""
    //             Untuk mendeteksi struktur sebuah inti atom yang memiliki
    //             jari-jari \(10^{-15} \) meter, seberkas elektron dari sebuah akselerator
    //             partikel ditembakkan pada sebuah inti padat yang mengandung kerapatan inti,
    //             maka akan terjadi efek difraksi dengan ukuran inti dapat ditentukan.
    //             Dalam kasus ini, besar momentum berkas sinar elektron yang diperlukan adalah…
    //             <br>
    //             ( \(h = 6,63 \times 10^{-34} Js \) )
    //                 """,
    //   options: [
    //     QuizOption('a', r"""(A)  \(6,63 \times 10^{-19} kgm/s \)  """),
    //     QuizOption('b', r"""(B)   \(13,2 \times 10^{-19} kgm/s \)  """),
    //     QuizOption('c', r"""(C)   \(63,3 \times 10^{-19} kgm/s \)  """),
    //     QuizOption('d', r"""(D)   \(0,33 \times 10^{-19} kgm/s \) """),
    //     QuizOption('e', r"""(E)   \(6,33 \times 10^{-19} kgm/s \) """),
    //   ],
    //   correctOptionId: 'd',
    //   pembahasan: r"""<p>
    //   <h4>Pembahasan: </h4> <br>
    //   Diketahui:	<br>
    //   \(R=10^{-15} m \) <br>
    //   \(h=6,63×10^{-34}  J.s \) <br>
    //   Ditanya: \(p? \) <br>
    //   Jawab: <br>
    //   Ingat persamaan panjang gelombang de Broglie! <br>
    //   \(λ= \frac{h}{p} \) <br>
    //   Jika besarnya jari-jari inti = panjang gelombang de Broglie = 10-15 m, sehingga momentumnya<br>
    //   \(p= \frac{h}{λ} = \frac{6,63×10^{-34}}{10^{-15}} =6,63×10^{-19} kg m/s \) <br>
    //   Jadi, besar momentum berkas sinar elektron yang diperlukan adalah \(6,63×10^{-19} kg m/s. \)

    // </p>""",
    // ),

    //  11
    Quiz(
      statement: r"""
                Sebuah elektron bermassa \(9,1 \times 10^{-31} kg \) bergerak dari keadaan
                diam melewati beda potensial 100 V. Panjang gelombang de Broglie elektron 
                tersebut adalah…
                <br>
                ( \(e = 1,6 \times 10^{-19} C \), dan \(h = 6,6 \times 10^{-34} Js \) )
                    """,
      options: [
        QuizOption('a', r"""(A)  0,123 nm """),
        QuizOption('b', r"""(B)   1,23 nm  """),
        QuizOption('c', r"""(C)   12,3 nm  """),
        QuizOption('d', r"""(D)   123 nm """),
        QuizOption('e', r"""(E)   1230 nm """),
      ],
      correctOptionId: 'd',
      pembahasan: r"""<p>
      <h4>Pembahasan: </h4> <br>
      Diketahui:	<br>
      \(V=100 V \) <br>
      \(m_e=9,1×10^{-31}  kg \) <br>
      \(e=1,6×10^{-19}  C \) <br>
      Ditanya: \(λ? \) <br>
      Jawab: <br>
      Panjang gelombang de Broglie memenuhi persamaan <br>
      \(λ= \frac{h}{√{2m_e eV}} \) <br>
      Dimana \(h=6,6×10^{-34}  J.s \) <br>
      \(λ= \frac{6,6×10^{-34}}{\sqrt{2(9,1×10^{-31})(1,6×10^{-19})(100)}}=0,123 nm  \) <br>
      Jadi, panjang gelombang de Broglie elektron tersebut adalah \(0,123 nm. \)

    </p>""",
    ),

    // 12
    // Quiz(
    //   statement: r"""
    //             Sebuah foton dengan panjang gelombang awal 0,4 nm
    //             menumbuk elektron yang diam. Setelah bertumbukkan,
    //             foton dihamburkan dengan sudut \(120^o \) terhadap arah semula.
    //             Panjang gelombang foton setelah tumbukkan adalah…
    //                 """,
    //   options: [
    //     QuizOption('a', r"""(A)  0,4000 nm """),
    //     QuizOption('b', r"""(B)  0,4036 nm  """),
    //     QuizOption('c', r"""(C)  0,4136 nm """),
    //     QuizOption('d', r"""(D)  0,4660 nm """),
    //     QuizOption('e', r"""(E)  0,4760 nm """),
    //   ],
    //   correctOptionId: 'd',
    //   pembahasan: r"""<p>
    //     <h4>Pembahasan: </h4> <br>
    //     Diketahui:	<br>
    //     \(λ=0,4 nm \) <br>
    //     \(θ=120^o \) <br>
    //     Ditanya: \(λ'? \) <br>
    //     Jawab: <br>
    //     Panjang gelombang pada efek Compton dapat diperoleh dari <br>
    //     \(Δλ=h/(m_e c)(1-cos⁡θ)  \) <br>
    //     Dimana <br>
    //     \(h=6,6×10^{-34}  J.s  \) <br>
    //     \(m_e=9,1×10^{-31}  kg \) <br>
    //     \(c=3×10^8 m/s \)<br>
    //     maka<br>
    //     \(Δλ=(6,6×10^{-34})/((9,1×10^{-31})(3×10^8))(1-cos⁡〖120^o 〗) \)<br>
    //     \(Δλ=0,36×10^{-11} m \)
    //     Jika Δλ=λ^'-λ, maka <br>
    //     λ^'= \(Δλ+λ=(0,4×10^{-9)})+(0,0036×10^{-9)}) \) <br>
    //     Panjang gelombang setelah tumbukkan adalah λ^'=0,4036 nm.

    //   </p>""",
    // ),

    // // 13
    // Quiz(
    //   statement: r"""
    //             Frekuensi foton yang dihamburkan oleh
    //             elektron bebas akan menjadi lebih kecil
    //             dibandingkan saat datang adalah hasil dari…

    //                 """,
    //   options: [
    //     QuizOption('a', r"""(A)  Efek Compton """),
    //     QuizOption('b', r"""(B)  Efek fotolistrik  """),
    //     QuizOption('c', r"""(C)  Produksi pasangan """),
    //     QuizOption('d', r"""(D)  Produksi sinar-X """),
    //     QuizOption('e', r"""(E)  Radiasi benda hitam """),
    //   ],
    //   correctOptionId: 'd',
    //   pembahasan: r"""<p>
    //     <h4>Pembahasan: </h4> <br>
    //     Efek Compton merupakan peristiwa tumbukkan antara foton dengan partikel elektron,
    //     yang mengakibatkan panjang gelombang foton setelah tumbukkan menjadi lebih besar
    //     daripada panjang gelombang awal. Karena panjang gelombang dan frekuensi memenuhi persamaan <br>
    //     \(λ= \frac{c}{f} \) <br>
    //     Sehingga frekuensi yang terjadi setelah tumbukkan lebih kecil daripada frekuensi awal.

    //     </p>""",
    // ),
    // // no 14
    // Quiz(
    //   statement: r"""
    //             Sebuah atom memancarkan radiasi dengan panjang gelombang
    //             ketika sebuah elektronnya melakukan transisi dari tingkat energi E1 ke E2.
    //             Manakah dari persamaan berikut yang menyatakan hubungan antara , E1, dan E2?

    //                 """,
    //   options: [
    //     QuizOption('a',
    //         r"""(A)  \( \lambda = \frac{h}{c}\left ( E_{1} - E_{2} \right  ) \) """),
    //     QuizOption('b', r"""(B)  \(hc \left ( E_{1} - E_{2} \right  )  \)  """),
    //     QuizOption('c',
    //         r"""(C)  \(\lambda = \frac{hc}{\left (E_{1} - E_{2}  \right )} \) """),
    //     QuizOption('d',
    //         r"""(D)  \(\lambda = \frac{c}{h}\left ( E_{1} - E_{2} \right  ) \) """),
    //     QuizOption('e',
    //         r"""(E)  \(\lambda = \frac{\left (E_{1} - E_{2}  \right )}{hc} \) """),
    //   ],
    //   correctOptionId: 'd',
    //   pembahasan: r"""<p>
    //     <h4>Pembahasan: </h4> <br>
    //     \( ΔE = \frac{hc}{\lambda} \) <br>
    //     \( \lambda = \frac{hc}{ΔE} = \frac{hc}{\left ( E_{1} - E_{2} \right)} \) <br>
    //     Jadi hubungan antara antara λ, E1, dan E2 adalah
    //     \( \lambda = \frac{hc}{\left(E_{1} - E_{2} \right)} \)

    // </p>""",
    // ),
    // no 15
    // Quiz(
    //   statement: r"""
    //            Sebuah elektron energi totalnya n kali energi diamnya. Jika massa
    //            elektron adalah \(m_{0 } \), konstanta Planck adalah h, dan kelajuan cahaya
    //            di ruang hampa adalah c, maka panjang gelombang de Broglie elektron
    //            tersebut adalah…

    //                 """,
    //   options: [
    //     QuizOption('a', r"""(A)  \(\frac{h\sqrt{n^2 - 1}}{m_{0} c} \) """),
    //     QuizOption('b', r"""(B)  \(\frac{h\sqrt{n^2 + 1}}{m_{0} c} \)  """),
    //     QuizOption('c', r"""(C)  \(\frac{h}{nm_{0}c} \) """),
    //     QuizOption('d', r"""(D)  \(\frac{h}{\sqrt{n^2 - 1} m_{0}c}\) """),
    //     QuizOption('e', r"""(E)  \(\frac{h}{\sqrt{n^2 + 1} m_{0}c} \) """),
    //   ],
    //   correctOptionId: 'd',
    //   pembahasan: r"""<p>
    //   <h4>Pembahasan: </h4> <br>
    //   Panjang gelombang de Broglie adalah <br>

    //   \(λ= \frac{h}{mv} \) <br>

    //   Massa relativitas adalah <br>
    //   \(m= \frac{m_0}{ \sqrt{1-\frac{v^2}{c^2} }}=γm_0\) <br>
    //   Energi total benda yang bergerak adalah E=mc2. Energi diam benda yang tidak bergerak adalah
    //   E0=m0c2. Sehingga: \(E=mc^2=γm_0 c^2=γE_0 \). Pada soal diketahui energi total elektron n kali
    //   energi diamnya, sehingga:
    //   \(E=nE_0→γE_0=nE_0→γ=n \) <br>
    //   \(γ=n \) <br>
    //   \( \frac{1}{ \sqrt{1- \frac{v^2}{c^2} }}=n \) <br>
    //   \( \frac{1}{1- \frac{v^2}{c^2} }=n^2 \) <br>
    //   \( \frac{c^2}{c^2-v^2 }=n^2  \) <br>
    //   \( \frac{c^2}{n^2} =c^2-v^2  \) <br>
    //   \( v^2=c^2- \frac{c^2}{n^2} = \frac{(n^2-1) c^2}{n^2}  \)<br>
    //   \( v= \sqrt{ \frac{(n^2-1) c^2}{n^2} }= \frac{\sqrt{n^2-1}}{n} c \) <br>
    //   Sehingga panjang gelombangnya <br>
    //   \( λ= \frac{h}{mv} = \frac{h}{ \frac{γm_0 \sqrt{(n^2-1}} c}{n} \) <br>
    //   \(= \frac{h}{ \frac{nm \sqrt{(n^2-1) c}}{n}}= \frac{h}{mc \sqrt{(n^2-1)}} \) <br>
    //   Jadi, panjang gelombang de Broglie partikel sebesar \( \frac{h}{\sqrt{(n^2-1)} mc}. \)

    // </p>""",
    // ),

    Quiz(
      statement: r"""
               	Berdasarkan graifk intensitas (I) terhadap λ, seperti gambar. <br>
                Maka dapat disimpulkan…


                    """,
      imgName: "assets/ujikompetensi/ujikom_7.png",
      options: [
        QuizOption('a', r"""(A)  \(T_3 > T_2 > T_1 \) """),
        QuizOption('b', r"""(B)  \(T_1 > T_2 > T_3\)  """),
        QuizOption('c', r"""(C)  \(T_1 > T_2, T_2 > T_3 \) """),
        QuizOption('d', r"""(D)  \(T_3 = T_2 = T_1 \) """),
        QuizOption('e', r"""(E)  \(T_1 < T_2 < T_3 \) """),
      ],
      correctOptionId: 'b',
      pembahasan: r"""<p>
        <h4>Pembahasan: </h4> <br>
        Menurut persamaan pergeseran Gelombang Wien menyatakan bahwa <br>
        \(λ_maks  T= 2,90×10^{-3}  mK \) <br>

        Sehingga panjang gelombang (λ) akan berbanding terbalik dengan suhu (T) 
        karena hasil perkalian keduanya merupakan konstanta.
      </p>""",
    ),

    // no 16
    Quiz(
      statement: r"""
               Grafik berikut menunjukkan hubungan antara energi kinetik maksimum 
               elektron (Ek) terhadap frekuensi foton (f) pada efek fotolistrik. 
               Jika konstanta Planck \(6,6 \times 10^{-34} Js \) dan 1 eV = \(1,6 \times 10^{-19} joule \), maka 
               besar f (dalam Hz) adalah…


                    """,
      imgName: "assets/ujikompetensi/ujikom_16.png",
      options: [
        QuizOption('a', r"""(A)  \(48 \times 10^{14} \) """),
        QuizOption('b', r"""(B)  \(21 \times 10^{14} \)  """),
        QuizOption('c', r"""(C)  \(14 \times 10^{14} \) """),
        QuizOption('d', r"""(D)  \(9,5 \times 10^{14} \) """),
        QuizOption('e', r"""(E)  \(8,9 \times 10^{14} \) """),
      ],
      correctOptionId: 'd',
      pembahasan: r"""<p>
        <h4>Pembahasan: </h4> <br>
        Diketahui:	<br>
        \(h=6,6×10^{-34}  J.s  \) <br>
        \(E_K=0,2 eV=0,32×10^{-19} J \) <br>
        \(W_0=3,7 eV=5,92×10^{-19} J \) <br>
        Ditanya: \(f? \) <br>
        Jawab:<br>
        Berdasarkan grafik tersebut diperoleh bahwa<br>
        \(W_0=3,7 eV=5,92×10^{-19} joule \) <br>
        \(E_k=0,2 eV=0,32×10^{-19} joule \) <br>
        Energi kinetik efek fotolistrik <br>
        \(E_k=hf-W_0 \) <br>
        \(f= \frac{E_k+W_0}{h} \) <br>
        \(f= \frac{(0,32×10^{-19} )+(5,92×10^{-19})}{6,6×10^{-34} }=9,5×10^14  Hz \) <br>
        Sehingga \(f=9,5×10^14  Hz \) 

      </p>""",
    ),
    // no 17
    // Quiz(
    //   statement: r"""
    //            Sebuah partikel yang massanya \(4 \times 10^{-31} kg \) bergerak dengan
    //            kecepatan \(1,5 \times 10^8 m/s \). Bila tetapan Planck \(6,63 \times 10^{-34} Js \),
    //            maka panjang gelombang partikel tersebut adalah…

    //                 """,
    //   options: [
    //     QuizOption('a', r"""(A)  0,1 Å """),
    //     QuizOption('b', r"""(B)  0,2 Å  """),
    //     QuizOption('c', r"""(C)  0,6 Å """),
    //     QuizOption('d', r"""(D)  0,8 Å """),
    //     QuizOption('e', r"""(E)  1,0 Å """),
    //   ],
    //   correctOptionId: 'd',
    //   pembahasan: r"""<p>
    //     <h4>Pembahasan: </h4> <br>
    //     Diketahui:	<br>
    //     \(m=4×10^{-31} kg \) <br>
    //     \(v=1,5×10^8  m/s \) <br>
    //     \(h=6,63×10^{-34} Js \) <br>
    //     Ditanya: \(λ? \) <br>
    //     Jawab: <br>
    //     \(λ=h/mv \) <br>
    //     \(= \frac{6,63×10^{-34}}{(4×10^{-31} )(1,5×10^8 )} =1,105×10^{-11} m \) <br>
    //     \()=0,1105×10^{-10} m \) <br>
    //     \(≈0,1 Å \) <br>
    //     Jadi, panjang gelombang partikel tersebut adalah \(0,1 Å.\) </p>
    //   """,
    // ),
    // no 18
    Quiz(
      statement: r"""
               Sebuah benda hitam bersuhu T Kelvin meradiasikan energi dalam 
               bentuk gelombang elektro-magnetik. Bila \(\lambda_{max} \) dan \(f_{max} \) adalah 
               panjang gelombang dan frekuensi dari gelombang yang meradiasikan 
               kalor dengan intensitas maksimum, maka…



                    """,
      options: [
        QuizOption(
            'a', r"""(A)  \(\lambda_{max} \) sebanding dengan \(T^4 \) """),
        QuizOption('b', r"""(B)  \(f_{max} \) sebanding dengan \(T^4 \)  """),
        QuizOption(
            'c', r"""(C)  \(\lambda_{max} \) sebanding dengan \(T \) """),
        QuizOption(
            'd', r"""(D)  \(f_{max} \) sebanding dengan \(\frac{1}{T} \) """),
        QuizOption('e',
            r"""(E)  \(\lambda_{max} \) sebanding dengan \(\frac{1}{T} \) """),
      ],
      correctOptionId: 'd',
      pembahasan: r"""<p>
      <h4>Pembahasan: </h4> <br>
      \(λ_max T=C  \) <br>
      \(λ_max= \frac{C}{T} \)<br>
      Dengan C adalah konstanta Wien. Maka λ_max sebanding dengan \( \frac{1}{T} \)

    </p>""",
    ),
    // no 19
    // Quiz(
    //     statement: r"""
    //            Permukaan logam tertentu mempunyai fungsi kerja W joule.
    //            Bila konstanta Planck h joule sekon, maka energi maksimum
    //            fotoelektron yang dihasilkan oleh cahaya berfrekuensi  Hz adalah
    //           (dalam joule)…

    //                 """,
    //     options: [
    //       QuizOption('a', r"""(A)  W+hv """),
    //       QuizOption('b', r"""(B)  W(hv)  """),
    //       QuizOption('c', r"""(C)  W-hv """),
    //       QuizOption('d', r"""(D)  \(\frac{hv}{W} \)  """),
    //       QuizOption('e', r"""(E)  hv+W """),
    //     ],
    //     correctOptionId: 'd',
    //     pembahasan: r"""<p>
    // <h4>Pembahasan:</h4> <br>
    // Energi kinetik efek fotolistrik <br>
    // \(E_k=hv-W \)

    // </p>"""),

    // no 20
    Quiz(
        statement: r"""
               20.	Pada gejala foto listrik diperoleh grafik hubungan 
               I (kuat arus) yang timbul terhadap V (tegangan listrik) 
               sebagai berikut <br>
               20.	Pada gejala foto listrik diperoleh grafik hubungan 
               I (kuat arus) yang timbul terhadap V (tegangan listrik) 
               sebagai berikut

                    """,
        imgName: "assets/ujikompetensi/ujikom_20.png",
        options: [
          QuizOption('a', r"""(A)  Mengurangi intensitas sinarnya """),
          QuizOption('b', r"""(B)  Menambah intensitas sinarnya  """),
          QuizOption('c', r"""(C)  Menaikkan frekuensi sinarnya """),
          QuizOption('d', r"""(D)  Menurunkan frekuensi sinarnya"""),
          QuizOption('e', r"""(E)  Mengganti logam yang disinari """),
        ],
        correctOptionId: 'b',
        pembahasan: r"""<p>
    <h4>Pembahasan: </h4> <br>
    Karena kuat arus dipengaruhi oleh jumlah muatan yang keluar, sedangkan 
    jumlah elektron dipengaruhi oleh intensitas sinarnya. Makin besar 
    intensitas yang disinarkan, maka akan makin besar pula jumlah elektron 
    dan kuat arusnya. Agar kuat arus a menjadi sama besar kuat arus b, maka 
    intensitas sinarnya ditambah.


    </p>"""),
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
                  renderingEngine: const TeXViewRenderingEngine.mathjax(),

                  // loadingWidgetBuilder: (BuildContext context) => SizedBox(
                  //     height: MediaQuery.of(context).size.width * 0.8,
                  //     child: Center(child: CircularProgressIndicator())),
                  fonts: const [
                    TeXViewFont(
                        fontFamily: 'roboto',
                        src: 'assets/font/Roboto-Black.ttf')
                  ],
                  // renderingEngine: widget.renderingEngine,
                  child: TeXViewColumn(
                    children: [
                      TeXViewImage.asset(
                          quizList[currentQuizIndex].imgName != ""
                              ? quizList[currentQuizIndex].imgName
                              : "assets/blank.png"),
                      TeXViewDocument(
                        quizList[currentQuizIndex].statement,
                        style: TeXViewStyle(
                          fontStyle: TeXViewFontStyle(fontFamily: "roboto"),
                          textAlign: TeXViewTextAlign.justify,
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
                    padding: TeXViewPadding.only(
                        top: 5, left: 10, right: 10, bottom: 30),
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  headTitle: 'Uji \nKompetensi',
                                  navTitle: 'Uji Kompetensi',
                                ),
                              ),
                            );
                          }
                          print(nilai);
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
