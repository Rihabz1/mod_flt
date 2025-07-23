import 'package:flutter/material.dart';

class listV extends StatelessWidget {
  const listV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View Example",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 20.0,
      ),

      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete,color: Colors.red),
              title: Text("Foisal"),
              subtitle: Text("Phone number: 01710652073"),
            
            ),
          );
        },
      ),
    );
  }
}
