import 'package:flutter/material.dart';
import 'package:uts_haidarjaimuladyan_2410910040026/Daftar.dart';

class LoginActivity extends StatefulWidget {
  const LoginActivity({super.key});

  @override
  State<LoginActivity> createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {

// variable
  bool _showpassword = true;
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _ttlController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Text("LKS \n\Mart", style: TextStyle(fontWeight: FontWeight.bold, color:const Color.fromARGB(255, 19, 86, 140), fontSize: 45 ),),
              ],
            ),
            SizedBox(height: 20,),
            Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            Text("Enter Your ID and Password to Sign In", style: TextStyle( fontSize: 15, color: Colors.blueGrey),),
            
            SizedBox(height: 20,),

          // Nama
            Text("Email :", style: TextStyle(fontSize: 15),),
            TextField(
              controller: _namaController, 
              maxLength: 50,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                hintText: "Email" , hintStyle: TextStyle(fontSize: 13),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
            ),
          
          // Kata Sandi
            Text("Password :", style: TextStyle(fontSize: 15)),
            TextField(
              controller: _passwordController,
              maxLength: 8,
              obscureText: _showpassword, 
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {_showpassword = !_showpassword;});
                  },
                  icon: Icon(
                    _showpassword
                    ? Icons.remove_red_eye
                    : Icons.visibility_off,
                  ),
                ),
                hintText: "Min. 8 characters", hintStyle: TextStyle(fontSize: 13),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
            ),

            SizedBox(height: 20,),

            TextButton(onPressed: () {          
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Daftar()), 
                );
              },
              child: Center(
                child: Container(
                  width: 500,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 21, 63, 161)
                  ),
                  child: Center(
                    child: Text("Daftar", style: TextStyle(fontSize: 20, color: Colors.white)))
                  ),
              ),
              )
            

            
          ]
        ),
      ),
    );
  }
}
