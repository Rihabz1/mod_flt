import 'package:flutter/material.dart';

class flt2 extends StatelessWidget {
  const flt2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          "Alarmy",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 245, 19, 3),
        elevation: 10.0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade700,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              child: Text("Set Alarm"),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade700,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child: Text("Set Alarm"),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(onPressed: () {}, child: Text("outlined button")),
            TextButton(
              onPressed: () {},
              child: Text(
                "Text Button",
                style: TextStyle(
                  color: Colors.red.shade700,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              Icons.alarm,
              size: 50,
              color: const Color.fromARGB(255, 191, 15, 3),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: 30,
                color: const Color.fromARGB(255, 4, 240, 67),
              ),
            ),

            SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                print("Tapped");
              },
              child: Text("This is a text", style: TextStyle(fontSize: 20)),
            ),
            InkWell(
              onTap: () {
                print("Tapped with InkWell");
              },
              child: Text("This is a text 2", style: TextStyle(fontSize: 20))),
          



            Padding(
              padding:EdgeInsets.all(99),
            // padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Text("padding text", style: TextStyle(fontSize: 20,color: Colors.red.shade700)),
             
            ),

          ],
        ),
      ),
    );
  }
}
