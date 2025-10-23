import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
  final List<Map<String, dynamic>> mhs = [
    {"nama": "Muslihat", "nim": "123", "usia": 9},
    {"nama": "mawar", "nim": "456", "usia": 10},
    {"nama": "murad", "nim": "789", "usia": 11},
    {"nama": "ujang", "nim": "101", "usia": 12},
    {"nama": "cecep", "nim": "112", "usia": 13},
    {"nama": "ubed", "nim": "131", "usia": 16},
    {"nama": "komar", "nim": "415", "usia": 18},
  ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 400,
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Produk"),
                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20)
                      )
                    ),
                    child: Center(child: Text("Cari Item"))
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

        ]
      ),
      )
    );
  }
}