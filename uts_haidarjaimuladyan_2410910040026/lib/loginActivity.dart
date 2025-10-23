import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text("Registrasi", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          // Nama
            Text("Nama :", style: TextStyle(fontSize: 15),),
            SizedBox(height: 5,),
            TextField(
              controller: _namaController, 
              maxLength: 50,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                hintText: "Masukkan Nama Lengkap" , hintStyle: TextStyle(fontSize: 13),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
            ),
          
          // Kata Sandi
            Text("Kata Sandi :", style: TextStyle(fontSize: 15)),
            SizedBox(height: 5,),
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
                hintText: "Masukkan Kata Sandi", hintStyle: TextStyle(fontSize: 13),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
            ),

            // Tanggal
            Text("Tanggal Lahir :", style: TextStyle(fontSize: 15)),
            SizedBox(height: 5,),
            TextField(
              controller: _ttlController, 
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.calendar_month),
                hintText: "dd-mm-yyyy", hintStyle: TextStyle(fontSize: 13),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),

              onTap: () async {
                DateTime? pilihTanggal = await showDatePicker(
                  context: context, 
                  firstDate: DateTime(2000), 
                  lastDate: DateTime(2100),
                  initialDate: DateTime.now()
                );
                // cek tanggal yang dipilih
                if(pilihTanggal !=null) {
                  setState(() {
                    _ttlController.text = '${pilihTanggal.day}-${pilihTanggal.month}-${pilihTanggal.year}';
                  });
                }
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              print(_namaController.text);
              print(_passwordController.text);
              print(_ttlController.text);
            }, 
            child: Text("Simpan")),
            
          ]
        ),
      )
    );
  }
}
