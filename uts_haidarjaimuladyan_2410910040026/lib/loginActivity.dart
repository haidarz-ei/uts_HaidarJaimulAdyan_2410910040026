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
        title: Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(""))
              ),
            ),

          // Nama
            Text("Email :", style: TextStyle(fontSize: 15),),
            SizedBox(height: 5,),
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
                hintText: "Min. 8 characters", hintStyle: TextStyle(fontSize: 13),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
            ),

            SizedBox(height: 20,),
            
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
