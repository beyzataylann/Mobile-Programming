import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/indir.png'), 
            ),
            SizedBox(height: 16),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
              ),
            ),
            SizedBox(height: 16),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Şifre'),
                obscureText: true,
              ),
            ),
            SizedBox(height: 16),
           
            GestureDetector(
              onTap: () {
               
              },
              child: Text(
                'Şifremi Unuttum',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 32),
            
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
