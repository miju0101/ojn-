import 'package:flutter/material.dart';
import 'package:project2/view/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("오늘 주짓수 누구와", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Center(
              child: Container(
                width: 300,
                child: Image.asset("assets/free-icon-jiu-jitsu-2720726.png", fit: BoxFit.cover,)
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 249, 224, 0)
              ),
              child: Text("카카오톡으로 로그인", style: TextStyle(color: Colors.black),)
            ),
          ],
        ),
      )
    );
  }
}