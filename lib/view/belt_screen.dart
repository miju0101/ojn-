import 'package:flutter/material.dart';

class BeltScreen extends StatelessWidget {
  const BeltScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios), 
          onPressed: (){
            Navigator.pop(context);
          }
        ),
        title: const Text("벨트"),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}

