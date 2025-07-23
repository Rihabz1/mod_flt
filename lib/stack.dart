import 'package:flutter/material.dart';

class stk extends StatelessWidget {
  const stk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 20.0,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                color: Colors.red,
                width: 200,
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 20,
                top: 130,
                child: Container(
                  height: 200,
                  color: const Color.fromARGB(255, 27, 247, 3),
                  width: 200,
                ),
              ),
              Positioned(
                left: 10,
                right: 10,
                bottom: 130,
                top: 10,

                child: Container(
                  height: 200,
                  color: const Color.fromARGB(255, 236, 194, 25),
                  width: 200,
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          Stack(
            children: [
              CircleAvatar(
                radius: 50,
                
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7MMIrBlBJttU3237QobKx5By7QgIfFgI2OQ&s")
              ),
              Positioned(
                bottom: 10,
                right: 5,
                child: Container(
                  alignment: AlignmentDirectional.bottomStart,
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                height: 5,
                color: Colors.grey,
                width: double.infinity,  

              ),
              
              AnimatedContainer(
                duration: Duration(seconds: 5),
                height: 5,
                width: 300,  
                color: Colors.blue,
              ),
            ],

          ),

          Stack(
            children: [
              Image.network("https://www.rainforesttrust.org/app/uploads/2021/10/Photo-Credit-CEDIA_SdD-Amazon-River_CC-aspect-ratio-1920-1300.jpg"),
              Positioned(
                bottom: 10,
                
                right: 150,
                child: Text("Amazon",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black54,
                ),
              )),
            ],
          )

        ],
      ),

    );

  }
}
