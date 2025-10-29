import 'package:flutter/material.dart';
import 'package:uts_haidarjaimuladyan_2410910040026/loginActivity.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

    @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {

// variable

  bool _keepLoggedIn = false;
  bool _showpassword = true;
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _konfirmasiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              width: MediaQuery.of(context).size.width * 0.4,
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

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Daftar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                        Text("Silahkan Isi Data Pribadi Anda", style: TextStyle( fontSize: 15, color: Colors.blueGrey),),
                      ]
                    )
                  ),

                  SizedBox(height: 20,),

                // Nama
                  Text("Nama Lengkap :", style: TextStyle(fontSize: 15),),
                  TextField(
                    controller: _namaController,
                    maxLength: 50,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_2),
                      hintText: "Nama Lengkap" , hintStyle: TextStyle(fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                  ),

                // Alamat
                  Text("Alamat :", style: TextStyle(fontSize: 15),),
                  TextField(
                    maxLength: 50,
                    controller: _alamatController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.home),
                      hintText: "Alamat" , hintStyle: TextStyle(fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                  ),

                // username
                  Text("Username :", style: TextStyle(fontSize: 15),),
                  TextField(
                    maxLength: 50,
                    controller: _usernameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: "Username" , hintStyle: TextStyle(fontSize: 13),
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

                // Konfirmasi Kata Sandi
                  Text("Konfirmasi Password :", style: TextStyle(fontSize: 15)),
                  TextField(
                    controller: _konfirmasiController,
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
                  ElevatedButton(onPressed: () {
                    if (_passwordController.text != _konfirmasiController.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Password tidak cocok')),
                      );
                      return;
                    }
                    // Logika pendaftaran: Simpan data ke database atau API
                    // Contoh: Kirim data ke server atau simpan lokal
                    print('Nama: ${_namaController.text}');
                    print('Alamat: ${_alamatController.text}');
                    print('Username: ${_usernameController.text}');
                    print('Password: ${_passwordController.text}');
                    print('Keep Logged In: $_keepLoggedIn');

                    // Tampilkan pesan sukses
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Pendaftaran berhasil!')),
                    );

                    // Navigasi ke halaman login
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginActivity()),
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
                  //       child: Text("Daftar", style: TextStyle(fontSize: 20, color: Colors.white)))
                  //  ),
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 19, 86, 140),
                    minimumSize: Size(500, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Daftar", style: TextStyle(fontSize: 20, color: Colors.white)),
                ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sudah punya Akun?", style: TextStyle(fontWeight: FontWeight.bold),),
                          TextButton(onPressed: () {
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => LoginActivity()),
                              );
                            },
                            child: Row(
                              children: [
                                Text("Login Disini", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.blueAccent)),
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

    
