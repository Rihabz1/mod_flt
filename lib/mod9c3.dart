import 'package:flt_mod/mod8_C2.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigation Example",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/class1');
              },
              child: Text("Button1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/class2');
              },
              child: Text("Button2"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder:
                        (context, animation, secondaryAnimation) => mod8C2(),
                    transitionsBuilder: (
                      context,
                      animation,
                      secondaryAnimation, 
                      child,
                    ) {
                      const begin = Offset(1.0, 3);
                      const end = Offset.zero;
                      const curve = Curves.ease;
                      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                      return SlideTransition(position: animation.drive(tween), child: child);
                    },
                  ),
                );
              },
              child: Text("Button3"),
            ),
          ],
        ),
      ),
    );
  }
}
