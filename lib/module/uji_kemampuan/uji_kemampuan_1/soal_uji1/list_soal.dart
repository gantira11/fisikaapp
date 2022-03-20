import 'package:fisikaapp/common/etc.dart';

class ListSoal {
  static List<Quiz> quizList = [
    // no 1
    Quiz(statement: r"""<h4>Suatu benda mempunyai emisivitas 0,41. 
            Berapakah intensitas radiasi total benda tersebut pada suhu 400K? (tetapan Stefan-Boltzman 
            \(σ = {5,67 \times 10^{-8} W/m^2 K^2}\)
            )</h4>""", options: [
      QuizOption('a', r""" <h4>(A)   \(6,02 \times 10^2 kJ \)</h4>"""),
      QuizOption('b', r""" <h4>(B)   \(6,02 \times 10^3 kJ \)</h4>"""),
      QuizOption('c', r""" <h4>(C)   \(6,02 \times 10^2 J \)</h4>"""),
      QuizOption('d', r""" <h4>(D)   \(6,02 \times 10^3 J \)</h4>"""),
      QuizOption('e', r""" <h4>(E)   \(6,02 \times 10^4 J \)</h4>"""),
    ], correctOptionId: 'c'),

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
        correctOptionId: 'a'),

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
        correctOptionId: 'e'),

    //no 4
    Quiz(statement: r"""<h4>Panjang gelombang pembawa energi radiasi 
            maksimum suatu benda bersuhu \(25^oC \) adalah… \(C = {2,98 \times 10^{-3} mK}\)
            </h4>""", options: [
      QuizOption('a', r""" <h4>(A)   \(10^{-9} m \)</h4>"""),
      QuizOption('b', r""" <h4>(B)   \(10^{-8} m  \)</h4>"""),
      QuizOption('c', r""" <h4>(C)   \(10^{-7} m  \)</h4>"""),
      QuizOption('d', r""" <h4>(D)   \(10^{-6} m \)</h4>"""),
      QuizOption('e', r""" <h4>(E)   \(10^{-5} m  \)</h4>"""),
    ], correctOptionId: 'e'),
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
        correctOptionId: 'c'),
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
        correctOptionId: 'c'),
    // soal no 7
    Quiz(statement: r"""
              $$
              
              \begin{align}
              \dot This is item number one
              \dot This is item number two
              \end{align}
              $$
            """, options: [
      QuizOption('a', r""" <h4>(A)   72,5 mikrometer</h4>"""),
      QuizOption('b', r""" <h4>(B)   145 mikrometer</h4>"""),
      QuizOption('c', r""" <h4>(C)   290 mikrometer</h4>"""),
      QuizOption('d', r""" <h4>(D)   580 mikrometer</h4>"""),
      QuizOption('e', r""" <h4>(E)   1.160 mikrometer</h4>"""),
    ], correctOptionId: 'c'),
    //no 8
    Quiz(statement: r"""<h4>Sebuah bintang memiliki suhu permukaan 5.796 K. 
    Bintang tersebut akan memancarkan spektrum pada panjang gelombang…
    \(C = 2,898 \times 10^{-2} mK \)
            </h4>""", options: [
      QuizOption('a', r""" <h4>(A)   1.250 Å</h4>"""),
      QuizOption('b', r""" <h4>(B)   2.500 Å</h4>"""),
      QuizOption('c', r""" <h4>(C)   3.750 Å</h4>"""),
      QuizOption('d', r""" <h4>(D)   5.000 Å</h4>"""),
      QuizOption('e', r""" <h4>(E)   6.250 Å</h4>"""),
    ], correctOptionId: 'e'),
  ];
}
