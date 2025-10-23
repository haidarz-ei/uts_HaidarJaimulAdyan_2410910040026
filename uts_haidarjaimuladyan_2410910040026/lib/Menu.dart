import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
  final List<Map<String, dynamic>> mhs = [
    {"nama": "Muslihat", "nim": "123", "usia": 9},
    {"nama": "mawar", "nim": "456", "usia": 10},
    {"nama": "cecep", "nim": "112", "usia": 13},
    {"nama": "ubed", "nim": "131", "usia": 16},
    {"nama": "komar", "nim": "415", "usia": 18},
  ];

  List<Map<String,dynamic>> Items=[
    {
      "kode_produk":"PRD-001",
      "deskripsi":"Good Day Freeze",
      "harga":15000,
      "stok":5,
      "rating":4.8,
      "gambar":"gambar/001.jpg"
    },
    {
      "kode_produk":"PRD-002",
      "deskripsi":"Kapal Api",
      "harga":20000,
      "stok":6,
      "rating":4.7,
      "gambar":"gambar/002.jpg"
    },
    {
      "kode_produk":"PRD-003",
      "deskripsi":"Torabika Coffee",
      "harga":21000,
      "stok":5,
      "rating":4.8,
      "gambar":"gambar/003.jpg"
    },
    {
      "kode_produk":"PRD-004",
      "deskripsi":"Pikopi ",
      "harga":13000,
      "stok":5,
      "rating":4.4,
      "gambar":"gambar/004.jpg"
    },
  ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
                color: const Color.fromARGB(255, 210, 210, 210)
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/Logo.png"), 
                      fit: BoxFit.cover,)
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text("LKS MART", style: TextStyle(fontWeight: FontWeight.bold, color:const Color.fromARGB(255, 19, 86, 140), fontSize: 45 ),),
                ],
              ),
            ),  
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Produk", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:const Color.fromARGB(255, 19, 86, 140)),),
                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 223, 223, 223),
                      borderRadius: BorderRadius.all(Radius.circular(10)
                      )
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Cari Item"),
                        Icon(Icons.search)
                        ]
                          
                      )
                      
                    )
                  )
                ],
              ),
            ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: mhs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: mhs[index]["usia"] < 16
                                ? Colors.amber
                                : Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: ListTile(
                              title: Text(mhs[index]["nama"]),
                              subtitle: Text(mhs[index]["usia"].toString(),
                              )
                            )
                          ),
                        );
                      },
                    ),
                  ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: Items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: ListTile(
                              title: Text(Items[index]["deskripsi"]),
                              subtitle: Text(Items[index]["usia"].toString(),
                              )
                            )
                          ),
                        );
                      },
                    ),
                  ),

        ]
      ),
      )
    );
  }
}