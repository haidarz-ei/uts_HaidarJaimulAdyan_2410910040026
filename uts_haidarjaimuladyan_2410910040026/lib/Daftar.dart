import 'package:flutter/material.dart';

class Daftar extends StatelessWidget {
  const Daftar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/Logo.png"), 
                      fit: BoxFit.cover,)
                    ),
                  ),  
                  SizedBox(width: 10,),
                  Text("LKS MART", style: TextStyle(fontWeight: FontWeight.bold, color:const Color.fromARGB(255, 19, 86, 140), fontSize: 45 ),),
                ],
              ),
          
          
              SizedBox(height: 20,),
              Text("Daftar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              Text("Silahkan Isi Data Pribadi Anda", style: TextStyle( fontSize: 15, color: Colors.blueGrey),),
            ]
          ),
        )

      )
    );
  }
}

    
