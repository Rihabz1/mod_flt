import 'package:flutter/material.dart';

class counterApp extends StatefulWidget {
  counterApp({super.key}) {
    print("1 constructor");
  }

  @override
  State<counterApp> createState() {
    print("2 createState");
    return _counterAppState();
  }
}

class _counterAppState extends State<counterApp> {
  int number = 0;

  void initState(){
    super.initState();
    print("3 initState");

  }

  void deactivate(){
    print("5 deactivate");
    super.deactivate();
  }

  void dispose() // This method is called when the widget is removed from the widget tree
  {
    print("4 dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$number',
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    print("Decrementing");
                    number--;
                  });
                },
                child: Text("-", style: TextStyle(fontSize: 34)),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    print("Incrementing");
                    number++;
                  });
                },
                child: Text("+", style: TextStyle(fontSize: 34)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
