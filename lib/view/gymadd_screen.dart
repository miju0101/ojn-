import 'package:flutter/material.dart';

class GymAddScreen extends StatelessWidget {
  const GymAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text("체육관 등록"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("체육관 명:"),
                  SizedBox(width: 5),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                      ),
                    )
                  )
                ],
              ), 
              SizedBox(height: 15),
              Row(
                children: [
                  Text("체육관 번호:"),
                  SizedBox(width: 5),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                      ),
                    )
                  )
                ],
              ), 
              SizedBox(height: 15),
              Row(
                children: [
                  Text("체육관 명:"),
                  SizedBox(width: 5),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                      ),
                    )
                  ),
                  Text(" - "),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                      ),
                    )
                  ),
                ],
              ), 
              SizedBox(height: 18),
              Text("체육관 대표 사진"),
              SizedBox(height: 10),
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Icon(Icons.add_circle_outline, size: 50),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){},
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 50,
          child: Center(child: Text("등록하기")),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
      )
    );
  }
}