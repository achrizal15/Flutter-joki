import 'package:flutter/material.dart';
import 'package:landin_app/views/tambah_data.dart';

class HomeScreen extends StatelessWidget {
  final List<String> imageList = [
    "assets/images/rumah.jpeg",
    "assets/images/kebun.jpeg",
    "assets/images/tanah.jpeg",
    // Tambahkan URL gambar lainnya sesuai kebutuhan
  ];

  final List<String> captionList = [
    "keterangan : Luas Tanah 200 meter persegi, Harga: Rp 1.500.000.000",
    "keterangan : Luas Tanah 200 meter persegi, Harga: Rp 1.500.000.000",
    "keterangan : Luas Tanah 200 meter persegi, Harga: Rp 1.500.000.000",
    // Tambahkan keterangan lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 2, 45, 119),
        title: Text('Beranda', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.logout))
        ],
      ),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 6 / 3, // Ganti dengan rasio aspek yang sesuai
                  child: Image.asset(
                    imageList[index],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    captionList[index],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InputFormPage()),
                      );
        },
        child: Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 2, 45, 119),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    
    );
    
  }
}
