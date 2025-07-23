import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app'), 
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        shape : RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(300.0),
        ),
        

      ),

      body: SingleChildScrollView(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to my app!", style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),),
            Text("Welcome to my first app!", style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 22, 151, 63),
              fontWeight: FontWeight.bold,
            ),),
            Text("Welcome to my first app!", style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 224, 56, 5),
              fontWeight: FontWeight.bold,
            ),),
           Text("scroll"),
            Text("scroll"),
           
          
            
            Row(
              children: [
                Text("first app!", style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("first app!", style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 22, 151, 63),
                  fontWeight: FontWeight.bold,
                ),),
                Text("first app!", style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 224, 56, 5),
                  fontWeight: FontWeight.bold,
                ),),
              ]
            )
          ],
        ),
      )
      
      

    );
  }
}
