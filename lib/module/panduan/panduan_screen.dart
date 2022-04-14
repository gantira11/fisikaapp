import 'package:fisikaapp/common/colors.dart';
import 'package:fisikaapp/module/dashboard/dashboard_screen.dart';
import 'package:fisikaapp/utils/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PanduanScreen extends StatelessWidget {
  static const routename = "/panduan/";
  PanduanScreen({Key? key}) : super(key: key);

  String assetsName = "assets/images/Group 2.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Selamat Datang",
          style: TextStyle(fontSize: 30),
        ),
        flexibleSpace: SvgPicture.asset(
          assetsName,
          fit: BoxFit.fitWidth,
        ),
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Apa saja yang ada disini?",
                  style: TextStyle(
                      fontSize: 36,
                      color: CustomColors.darkBlueCustom,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Kompetensi Dasar",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.darkBlueCustom,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '3.8 ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        'Menganalisa secara kualitatif gejala kuantum yang mencakup sifat radiasi benda hitam, efek fotolistrik, efek Campton, dan sinar X dalam kehidupan sehari-hari',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "IPKD",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.darkBlueCustom,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '1. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        'Menganalisa besaran-besaran fisis pada radiasi benda hitam berdasarkan hukum Stefab-Boltzmann',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '2. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        'Menganalisis Hukum Pergeseran Wien pada radiasi sebuah benda',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '3. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        'Menganalisis pengaruh frekuensi atau panjang gelombang cahaya terhadap terjadinya efek fotolistrik',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '4. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        'Menganalisis gelombang de Braglie pada partikel dan besaran-besaran yang mempengaruhinya',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '5. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        'Menganalisis besaran fisis pada hamburan partikel akibat efek Compton',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '6. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        'Menganalisis besaran-besaran fisis pada proses produksi sinar X',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Tujuan Pembelajaran",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.darkBlueCustom,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '1. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        'Peserta didik mampu menjelaskan secara kualitatif gejala kuantum yang mencakup sifat radiasi benda hitam, efek fotolistrik, efek Compton, dan sinar X dalam kehidupan sehari-hari dengan benda melalui kegiatan dan diskusi',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '2. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        'Peserta didik mampu menjelaskan penerapan efek fotolistrik, efek Campton dan sinar X dalam kehidupan sehari-hari dengan benar setelah melakukan kegiatan diskusi',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Fitur-fitur",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.darkBlueCustom,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '1. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Ada 3 fitur utama yang bisa diakses; ",
                            ),
                            TextSpan(
                              text: "Materi, Uji Kemampuan ",
                              style:
                                  TextStyle(color: CustomColors.darkBlueCustom),
                            ),
                            TextSpan(text: "dan "),
                            TextSpan(
                              text: "Uji Kompetensi",
                              style:
                                  TextStyle(color: CustomColors.darkBlueCustom),
                            ),
                            TextSpan(text: ", serta fitur ekstra yaitu "),
                            TextSpan(
                                text: "Panduan",
                                style: TextStyle(
                                    color: CustomColors.darkBlueCustom))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '2. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Materi ",
                              style:
                                  TextStyle(color: CustomColors.darkBlueCustom),
                            ),
                            TextSpan(
                              text:
                                  "berisi bacaan dari pokok bahasan yaitu 'Konsep dan Fenomena Kuantum' dan dibagi menjadi 3 sub-bagian; ",
                            ),
                            TextSpan(
                              text: "Konsep Foton, Efek Fotolistrik ",
                              style:
                                  TextStyle(color: CustomColors.darkBlueCustom),
                            ),
                            TextSpan(text: "dan "),
                            TextSpan(
                              text: "Efek Campton",
                              style:
                                  TextStyle(color: CustomColors.darkBlueCustom),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '3. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Uji Kemampuan ",
                              style:
                                  TextStyle(color: CustomColors.darkBlueCustom),
                            ),
                            TextSpan(
                                text:
                                    "berisi 5 soal untuk menguji pemahaman pada masing-masing sub-bagian materi.")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '4. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Uji Kompetensi ",
                              style:
                                  TextStyle(color: CustomColors.darkBlueCustom),
                            ),
                            TextSpan(
                                text:
                                    "berisi 10 soal untuk menguji pemahaman keseluruhan materi.")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '5. ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "Setelah mengerjakan "),
                            TextSpan(
                              text: "Uji Kemampuan ",
                              style:
                                  TextStyle(color: CustomColors.darkBlueCustom),
                            ),
                            TextSpan(text: "atau "),
                            TextSpan(
                                text:
                                    "kalian bisa melihat skor dari hasil pekerjaan kalian serta dapat melihat pembahasan tiap soal pada pilihan "),
                            TextSpan(
                                text: "Pembahasan",
                                style: TextStyle(
                                    color: CustomColors.darkBlueCustom))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Daftar Pustaka",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: CustomColors.darkBlueCustom,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "M.S., Adip dan N, Dara. 2016. "),
                            TextSpan(
                              text:
                                  "Fokus Pemantapan Materi Bank Soal Pembahasan Fisika SMA. ",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            TextSpan(text: "Solo: Genta Smart Publisher.")
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "Chasanah, Risdiyani, dkk. 2020. "),
                            TextSpan(
                              text: "Fisika Untuk SMA Kelas XII. ",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            TextSpan(
                                text: "Yogyakarta: PT Penerbit Intan Pariwara.")
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    "Serway, Raymond A. dan Jewet, John W. 2014 "),
                            TextSpan(
                              text:
                                  "Physics for Scientists and Engineers with Modern Physics Ninth Edition. ",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            TextSpan(text: "Boston: Mary Finch.")
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Tentang Pengembang",
                              style: TextStyle(
                                fontSize: 22,
                                color: CustomColors.darkBlueCustom,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text("E-Modul Fisika ini dikembangkan oleh:"),
                            SizedBox(height: 3),
                            Text("NURFAIZI YAHYA IS ZURETA"),
                            SizedBox(height: 3),
                            Text("Mahasiswa S1 Pendidikan "),
                            SizedBox(height: 3),
                            Text("Universitas Negri Malang"),
                            SizedBox(height: 20),
                            Text("Dengan bimbingan:"),
                            Text("1. Dr.Edi Supriana, M.Si"),
                            Text("2. Muhammad Reyza Arief Taqwa, M.Pd"),
                            SizedBox(height: 40),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => DashBoardScreen()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: ListTile(
                                    title: Row(
                                      children: [
                                        SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: SvgPicture.asset(
                                              "assets/images/books.svg"),
                                          //decoration: BoxDecoration(border: Border.all()),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Flexible(
                                          child: Text(
                                            "Halaman Utama",
                                            style: TextStyle(
                                              fontSize: 20,
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth = 1.2
                                                ..color =
                                                    CustomColors.blueCustom,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
