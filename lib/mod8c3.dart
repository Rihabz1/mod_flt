import 'package:flutter/material.dart';

class md8C3 extends StatelessWidget {
  const md8C3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 20.0,
      ),

      // body: GridView.count(
        
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   padding: const EdgeInsets.all(10),
        
        

      //   children: [
      //     Container(
      //       alignment: Alignment.center,
      //       decoration: BoxDecoration(
      //         color: Colors.blue[100],
      //         borderRadius: BorderRadius.circular(10),
      //       ),
      //       child: Text("Phone no", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 16, 16, 16), fontWeight: FontWeight.bold)),
            
      //     ),
      //     Container(
      //       alignment: Alignment.center,
      //       color: Colors.blue[100],
      //       child: Text("Phone no", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 16, 16, 16), fontWeight: FontWeight.bold)),
            
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //         color: Colors.blue[100],
      //         borderRadius: BorderRadius.circular(10),
      //       ),
      //       alignment: Alignment.center,
           
      //       child: Text("Phone no", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 16, 16, 16), fontWeight: FontWeight.bold)),
            
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //         color: Colors.blue[100],
      //         borderRadius: BorderRadius.circular(100),
      //       ),
      //       alignment: Alignment.center,
            
      //       child: Text("Phone no", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 16, 16, 16), fontWeight: FontWeight.bold)),
            
      //     )

      //   ],
      
      // ),



      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   padding: const EdgeInsets.all(10),
      //   children: List.generate(11, (index){

      //     return Card(
      //       elevation: 10,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       color: Colors.blue[100],
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
              
      //         children: [
      //           Icon(Icons.phone, size: 50, color: Colors.blue),
      //           //SizedBox(height: 10),
      //           Text('Phone ${index + 1}', style: TextStyle(fontSize: 20)),
      //         ],

      //       ),
      //     );
      //   },
      //   ),
      // ),

      body: GridView.builder(
        
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
        
        ),
        itemCount: 10,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.blue[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.phone, size: 50, color: Colors.blue),
                //SizedBox(height: 10),
                Text('Phone ${index + 1}', style: TextStyle(fontSize: 20)),
              ],
            ),
          );
        },

        
        

        
        ),


    );
  }
}
