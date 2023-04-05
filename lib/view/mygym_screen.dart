import 'package:flutter/material.dart';
import 'package:project2/view/home_screen.dart';

class MyGymScreen extends StatelessWidget {
  const MyGymScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("체육관 이름"),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            }, 
            child: const Icon(Icons.home, color: Colors.black)
          )
        ],
      ),

      body: Container(
        padding: const EdgeInsets.all(30),
        child: Container()
      ),
    );
  }
}