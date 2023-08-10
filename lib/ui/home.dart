import 'package:flutter/material.dart';
import 'package:spotifyclone/widget/SongCard.dart';

import '../widget/AlbumCard.dart';
import '../widget/RowAlbumCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft, //solda hizala
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.white.withOpacity(0.3),
                Colors.black.withOpacity(0)
              ],
                  stops: [
                0.0,
                0.3
              ])),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Son Oynatılanlar",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Icon(Icons.notifications),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.history),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.settings_outlined),
                        ],
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(15), //yatay kaydırmak için
                  child: Row(
                    children: [
                      AlbumCard(
                        image: NetworkImage(
                            "https://d35fbhjemrkr2a.cloudfront.net/Images/Shop/31/Product/5685/Thumb/233.jpg"),
                        label: "Barış Manço",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      AlbumCard(
                        image: NetworkImage(
                            "https://data.opus3a.com/product_photo/fc/fc844912428c5749af20a5401ff921f6/MAX/7ac45c6b7d4918d4db15eaae843cf0a8.jpg"),
                        label: "Cem Karaca",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      AlbumCard(
                        image: NetworkImage(
                            "https://i.discogs.com/BfI432BDDIRgHZvs_ryUEjaNpBFxAOHi4q0xUmGS3H4/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQwMTky/OTItMTQ2OTM2MjYy/MC0xNjEwLmpwZWc.jpeg"),
                        label: "MFÖ",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      AlbumCard(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/tr/e/ee/Erkin_Koray_%28alb%C3%BCm%2C_1973%29.jpg"),
                        label: "Ekin Koray",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      AlbumCard(
                        image: NetworkImage(
                            "https://data.opus3a.com/product_photo/70/7061f615f5f884357f95ef8ea68fff9e/MAX/acaa71e501ebbecd5b2a62303bd6049a.jpg"),
                        label: "Hardal",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "İyi akşamlar",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          RowAlbumCard(
                              label: "Top 50 - Global",
                              image: NetworkImage(
                                  "https://charts-images.scdn.co/assets/locale_en/regional/daily/region_global_default.jpg")),
                          SizedBox(
                            width: 15,
                          ),
                          RowAlbumCard(
                              label: "Türkçe Rock",
                              image: NetworkImage(
                                  "https://vivaturkiye.eu/wp-content/uploads/2020/11/123.jpg")),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          RowAlbumCard(
                              label: "Cem Karaca",
                              image: NetworkImage(
                                  "https://thisis-images.scdn.co/37i9dQZF1DZ06evO0JTzoQ-default.jpg")),
                          SizedBox(
                            width: 15,
                          ),
                          RowAlbumCard(
                              label: "Barış Manço",
                              image: NetworkImage(
                                  "https://thisis-images.scdn.co/37i9dQZF1DZ06evO1Sqlxq-default.jpg")),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          RowAlbumCard(
                              label: "Şebnem Ferah",
                              image: NetworkImage(
                                  "https://thisis-images.scdn.co/37i9dQZF1DZ06evO4boMuq-default.jpg")),
                          SizedBox(
                            width: 15,
                          ),
                          RowAlbumCard(
                              label: "Türkçe Slow",
                              image: NetworkImage(
                                  "https://i.scdn.co/image/ab67706c0000da840eebf9ab69c4cd21d7ca7422")),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Son dinlenilenlere göre öneriler",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(children: [
                        SongCard(
                          label: "Cem karaca, Barış Manço",
                          image: NetworkImage(
                              "https://i.scdn.co/image/ab67616d00001e02ec982b202f45ec3587045817"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        SongCard(
                          label: "Cem karaca, Barış Manço",
                          image: NetworkImage(
                              "https://i.scdn.co/image/ab67616d00001e02ec982b202f45ec3587045817"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        SongCard(
                          label: "Cem karaca, Barış Manço",
                          image: NetworkImage(
                              "https://i.scdn.co/image/ab67616d00001e02ec982b202f45ec3587045817"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        SongCard(
                          label: "Cem karaca, Barış Manço",
                          image: NetworkImage(
                              "https://i.scdn.co/image/ab67616d00001e02ec982b202f45ec3587045817"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        SongCard(
                          label: "Cem karaca, Barış Manço",
                          image: NetworkImage(
                              "https://i.scdn.co/image/ab67616d00001e02ec982b202f45ec3587045817"),
                        ),
                      ]),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
