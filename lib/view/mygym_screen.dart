import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project2/view/home_screen.dart';
import 'package:http/http.dart' as http;

class MyGymScreen extends StatefulWidget {
  const MyGymScreen({super.key});

  @override
  State<MyGymScreen> createState() => _MyGymScreenState();
}

class _MyGymScreenState extends State<MyGymScreen> {
  List<dynamic> userdata = [];

  void fetchData() async{
    var response = await http.get(Uri.parse("https://reqres.in/api/users?per_page=20"));

    if(response.statusCode == 200){
      var resource =response.body;

      if(resource.isNotEmpty){
        Map<String, dynamic> json = jsonDecode(resource);
        setState(() {
          userdata = json["data"];  
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("체육관명"),
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
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xff2315FF)
          ),
          child: GridView.builder(
            itemCount: userdata.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(userdata[index]['avatar']),
                    ),
                    Text("홍길동", style: TextStyle(color: Colors.white)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite, color: Colors.red, size: 15),
                        Text("${Random().nextInt(31)}",style: TextStyle(color: Colors.white))
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
