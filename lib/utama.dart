import 'package:flutter/material.dart';
import 'favorite_button.dart';

class utama extends StatefulWidget {
  const utama({super.key});

  @override
  State<utama> createState() => _HomePageState();
}

class _HomePageState extends State<utama> {
  bool isLoved = false;
  String buttonPressed = "Button sudah ditombol";

  void toggleLove() {
    setState(() {
      isLoved = !isLoved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Mission 1",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple,
              Colors.white
            ], // Atur warna gradien sesuai keinginan Anda
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        'images/2.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    // Positioned(
                    //   top: 20,
                    //   right: 20,
                    //   width: 60.0,
                    //   height: 60.0, // Atur sesuai kebutuhan Anda
                    //   child: LoveButton(
                    //     onPressed: toggleLove,
                    //     isLoved: isLoved,
                    //   ),
                    // ),
                  ],
                )),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(4, 8, 4, 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: AspectRatio(
                          aspectRatio:
                              1.0, // Set aspek rasio menjadi 1:1 untuk membuat gambar menjadi kotak
                          child: Image.asset(
                            'images/2.jpg',
                            fit: BoxFit
                                .cover, // Menggunakan BoxFit.cover untuk mengisi seluruh kotak
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(4, 8, 4, 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: AspectRatio(
                          aspectRatio:
                              1.0, // Set aspek rasio menjadi 1:1 untuk membuat gambar menjadi kotak
                          child: Image.asset(
                            'images/2.jpg',
                            fit: BoxFit
                                .cover, // Menggunakan BoxFit.cover untuk mengisi seluruh kotak
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(4, 8, 4, 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: AspectRatio(
                          aspectRatio:
                              1.0, // Set aspek rasio menjadi 1:1 untuk membuat gambar menjadi kotak
                          child: Image.asset(
                            'images/1.png',
                            fit: BoxFit
                                .cover, // Menggunakan BoxFit.cover untuk mengisi seluruh kotak
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(4, 8, 4, 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: AspectRatio(
                          aspectRatio:
                              1.0, // Set aspek rasio menjadi 1:1 untuk membuat gambar menjadi kotak
                          child: Image.asset(
                            'images/1.png',
                            fit: BoxFit
                                .cover, // Menggunakan BoxFit.cover untuk mengisi seluruh kotak
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 4,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Hikmah berpuasa",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                        child: ListView(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                                "Berpuasa Ramadhan memiliki hikmah mendalam bagi umat Muslim. Selain sebagai kewajiban ibadah, puasa Ramadhan mengajarkan kesabaran, kendali diri, dan rasa empati terhadap orang-orang yang kurang beruntung. Dalam menahan lapar dan haus, umat Muslim belajar mengendalikan nafsu dan menjauhi hal-hal yang buruk. Selain itu, puasa Ramadhan juga memperkuat ikatan spiritual dengan Allah, melalui ibadah, doa, dan tilawah Al-Quran yang lebih intens. Selama bulan suci ini, umat Muslim merasakan kebersamaan dan solidaritas dengan sesama Muslim di seluruh dunia, memperdalam rasa persaudaraan, dan merenungkan nilai-nilai moral serta spiritual yang penting dalam kehidupan sehari-hari. Puasa Ramadhan bukan hanya sekadar menahan makan dan minum, tetapi juga sebuah perjalanan rohani yang mendalam yang mengajarkan kasih sayang, pengampunan, dan keikhlasan dalam beribadah kepada Sang Pencipta."))
                      ],
                    ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
