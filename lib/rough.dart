import 'package:flutter/material.dart';

class lt extends StatelessWidget {
  const lt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
            
              title: Text("Item $index"),
              subtitle: Text("Subtitle $index"),
              leading: Icon(Icons.label),
              trailing: Icon(Icons.arrow_forward),
            ),
          );
        },
      ),
    );
  }
}
