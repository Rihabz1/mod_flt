import 'package:flutter/material.dart';

class m9c2 extends StatelessWidget {
  const m9c2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Nav Bar Class",style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 20.0,
      ),
      drawer: Drawer(

        child: ListView(

          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              padding: EdgeInsets.zero,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius:42.0,
                    
                    backgroundImage: NetworkImage("https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg"),
                    
                  ),
                  Text("Foisal Ahmed Rihab", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 18.0, fontWeight: FontWeight.bold),),
                  Text("foisal@hotmail.com", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 14.0),),
                
                ],
              ) ,
            ),

            ListTile(
              leading: Icon(Icons.home),
              title:Text("Home"),
              onTap: () {
                Navigator.pop(context);
              }, 
            ),

            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title:Text("Home"),
              onTap: () {
                Navigator.pop(context);
              }, 
            ),

            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title:Text("Home"),
              onTap: () {
                Navigator.pop(context);
              }, 
            ),

            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title:Text("Home"),
              onTap: () {
                Navigator.pop(context);
              }, 
            ),

            Divider(),

          ],

        ),
      ),




    );
  }
}