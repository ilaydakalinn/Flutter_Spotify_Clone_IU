import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Kitaplığın'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Arama butonuna tıklanıldığında yapılacak işlemler
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Ekleme butonuna tıklanıldığında yapılacak işlemler
            },
          ),
        ],
        leading: Icon(
          Icons.account_circle_outlined,
          size: 35,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
          itemCount: 10, // Listede kaç öğe olacaksa burayı güncelleyin
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(
                  vertical: 10), // Liste öğeleri arasındaki mesafe
              child: Column(
                children: [
                  ListTile(
                    leading: Image.network(
                      'https://i.scdn.co/image/ab67616d00001e0204a14bda92ba327064436574', // Resim yüksekliği
                    ),
                    title: Text('Liste Öğesi $index'),
                  ),
                  Divider(), // Çizgi ekleme
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
