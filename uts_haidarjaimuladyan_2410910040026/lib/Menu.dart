import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Map<int, int> quantities = {};

  @override
  Widget build(BuildContext context) {
  List<Map<String,dynamic>> Items=[
    {
      "kode_produk":"PRD-001",
      "deskripsi":"Good Day Freeze",
      "harga":15000,
      "stok":5,
      "rating":4.8,
      "gambar":"assets/001.jpg"
    },
    {
      "kode_produk":"PRD-002",
      "deskripsi":"Kapal Api",
      "harga":20000,
      "stok":6,
      "rating":4.7,
      "gambar":"assets/002.jpg"
    },
    {
      "kode_produk":"PRD-003",
      "deskripsi":"Torabika Coffee",
      "harga":21000,
      "stok":5,
      "rating":4.8,
      "gambar":"assets/003.jpg"
    },
    {
      "kode_produk":"PRD-004",
      "deskripsi":"Pikopi ",
      "harga":13000,
      "stok":5,
      "rating":4.4,
      "gambar":"assets/004.jpg"
    },

  ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
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

            SizedBox(height: 10,),

                  Expanded(
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.97,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            
                            color: const Color.fromARGB(255, 255, 249, 246)
                          ),
                        child: ListView.builder(
                          itemCount: Items.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 120,
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                                  // color: Colors.white,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey.withOpacity(0.3),
                                  //     spreadRadius: 2,
                                  //     blurRadius: 5,
                                  //     offset: Offset(0, 3),
                                  //   ),
                                  // ],
                                ),

                                // child: ListTile(
                                //   title: Text(Items[index]["deskripsi"]),
                                //   subtitle: Text(Items[index]["harga"].toString(),
                                //   ),
                                //   leading: Image.asset(Items[index]["gambar"], width: 100, height: 100, fit: BoxFit.cover)
                                // )
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(Items[index]["gambar"],
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        // padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                                        padding: EdgeInsets.only(
                                          right: 20,
                                          left: 5,
                                          top: 10,
                                          bottom: 10
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 130,
                                                  child: Text(
                                                    Items[index]["deskripsi"],
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                Text(
                                                  "Rp.${Items[index]["harga"]}",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey[600],
                                                  ),
                                                ),
                                                SizedBox(height: 12),
                                                // Text(
                                                //   "Stok: ${Items[index]["stok"]}",
                                                //   style: TextStyle(
                                                //     fontSize: 14,
                                                //     color: Colors.grey[600],
                                                //   ),
                                                // ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if ((quantities[index] ?? 0) > 0) {
                                                            quantities[index] = (quantities[index] ?? 0) - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: Icon(Icons.remove_circle_outline),
                                                      iconSize: 20,
                                                    ),

                                                    Text(
                                                      '${quantities[index] ?? 0}',
                                                      style: TextStyle(fontSize: 16),
                                                    ),

                                                    IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          quantities[index] = (quantities[index] ?? 0) + 1;
                                                        });
                                                      },
                                                      icon: Icon(Icons.add_circle_outline),
                                                      iconSize: 20,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            // SizedBox(width: 170),
                                            Container(
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star, color: Colors.yellow, size: 16),
                                                      Text(
                                                        "${Items[index]["rating"]}",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.grey[600],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(3),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Icon(Icons.shopping_cart, color: Colors.white, size: 20,))
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),

                SizedBox(height: 10,),

                Center(
                  child: Column(
                    children: [
                      Text("Total Belanja :", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 19, 86, 140)),)
                    ],
                  ),
                ),
                
                Center(
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.green
                    ),
                    child: Center(child: Text("Bayar Sekarang", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),)),
                  ),
                )
                

        ]
      ),
      )
    );
  }
}