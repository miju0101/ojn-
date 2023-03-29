import 'package:flutter/material.dart';
import 'package:project2/view/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("오주누"),
      ),

      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1
                  )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Icon(Icons.add_circle_outline),
                  ),
                ),
              )
                           
            ],
          ),
        ),
      ),
    );
  }
}