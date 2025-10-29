import 'package:flutter/material.dart';
import 'package:uts_haidarjaimuladyan_2410910040026/Daftar.dart';
import 'package:uts_haidarjaimuladyan_2410910040026/Menu.dart';

class LoginActivity extends StatefulWidget {
  const LoginActivity({super.key});

  @override
  State<LoginActivity> createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {

// variable
  bool _showpassword = true;
  bool _keepLoggedIn = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              width: MediaQuery.of(context).size.width * 0.35,
              height: 620,
              // decoration: BoxDecoration(
              //   color: Colors.amber
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/Logo.png"),
                            fit: BoxFit.cover,)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("LKS \n\MART", style: TextStyle(fontWeight: FontWeight.bold, color:const Color.fromARGB(255, 19, 86, 140), fontSize: 40 ),),
                      ],
                    ),
                    
                    SizedBox(height: 20,),
                    
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                          Text("Enter Your ID and Password to Sign In", style: TextStyle( fontSize: 15, color: Colors.blueGrey),),
                        ]
                      )
                    ),
            
                    SizedBox(height: 20,),
            
                  // Nama
                    Text("Email :", style: TextStyle(fontSize: 15),),
                    TextField(
                      controller: _emailController,
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
            
            
                    Container(
                      child: Row(
                        children: [
                          Checkbox(
                            value: _keepLoggedIn, tristate: true, onChanged: (bool? value) {
                              setState(
                                () {_keepLoggedIn = value ?? false;}
                              );
                            },
                          ),
                          Text("Keep me logged in", style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
            
                    SizedBox(height: 20,),
            
            // Changed TextButton to ElevatedButton for better button functionality.
                    // TextButton(onPressed: () {
                      ElevatedButton(
                        onPressed: () {
                          // Logika login: Validasi email dan password
                          // Contoh: Cek apakah email dan password valid
                          if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Email dan Password harus diisi')),
                            );
                            return;
                          }

                          // Simulasi login berhasil
                          print('Email: ${_emailController.text}');
                          print('Password: ${_passwordController.text}');
                          print('Keep Logged In: $_keepLoggedIn');

                          // Tampilkan pesan sukses
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Login berhasil!')),
                          );

                          // Navigasi ke halaman Menu
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Menu()),
                          );
                        },

                        // child: Center(
                        //   child: Container(
                        //     width: 500,
                        //     height: 50,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(10),
                        //       color: const Color.fromARGB(255, 19, 86, 140)
                        //     ),
                        //     child: Center(
                        //       child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.white)))
                        //   ),

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 19, 86, 140),
                          minimumSize: Size(500, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.white)),
                      ),
            
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Belum punya Akun?", style: TextStyle(fontWeight: FontWeight.bold),),
                            TextButton(onPressed: () {
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Daftar()),
                                );
                              },
                              child: Row(
                                children: [
                                  Text("Daftar Disini", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                                ],
                              )
                            )
                          ],
                        ),
                      ),
            
            
            
                  ]
                ),
              ),
          ),
          ]
        ),
      );
  }
}
