import 'package:flutter/material.dart';
import 'package:project2/view/gymadd_screen.dart';
import 'package:project2/view/mygym_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> dummyData = ["배나점 배곧점", "주짓수 서울점","주짓수 정왕점", "주짓수 정왕점"];
  //List<String> dummyData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios)
        ),
        centerTitle: true,
        title: Text("오주누"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                  hintText: "체육관 검색하기",
                  suffixIcon: Icon(Icons.search, color: Colors.black),
                ),
              ),
              const SizedBox(height: 15),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true, 
                itemCount: dummyData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.2,
                        color: Colors.grey,
                      )
                    ),
                    child: Column(
                      children: [
                        Container(height: 150, color: Colors.black),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(dummyData[index], style: TextStyle(fontWeight: FontWeight.bold),),
                              const Spacer(),
                              TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => GymAddScreen()));
                                }, 
                                child: const Text("등록하기", style: TextStyle(color: Colors.white)),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      )
    );
  }
}

