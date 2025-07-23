import 'package:flutter/material.dart';

class m9c1 extends StatelessWidget {
  const m9c1({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlertDialog() {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text("Alert Dialog"),
              content: Text("are u sure you want to proceed?"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("cancel"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.check_circle,
                    color: const Color.fromARGB(255, 230, 13, 13),
                  ),
                ),
              ],
            ),
      );
    }

    void showAlertDialogwithicon() {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text("installation block"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.warning,
                        color: const Color.fromARGB(255, 112, 9, 9),
                      ),
                      SizedBox(width: 10),
                      Text("warning"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  ),
                ],
              ),

              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("ok"),
                ),
              ],
            ),
      );
    }

    void showsimpledialog() {
      showDialog(
        context: context,
        builder:
            (context) => SimpleDialog(
              title: Text("Simple Dialog "),
              children: [
                SimpleDialogOption(child: Text("Option 1")),
                SimpleDialogOption(child: Text("Option 2")),
                SimpleDialogOption(child: Text("Option 3")),
              ],
            ),
      );
    }

    void showbottomsheet() {
      showModalBottomSheet(context: context, builder: (context) => Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("choose an option", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ListTile(
              title: Text("Option 1"),
              onTap: () {
                Navigator.pop(context);
              },  
            ),
             ListTile(
              title: Text("Option 1"),
              onTap: () {
                Navigator.pop(context);
              },  
            ),
            ListTile(
              title: Text("Option 1"),
              onTap: () {
                Navigator.pop(context);
              },  
            ),
            
            

         
          ],
        ),

      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Bar Title",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 20.0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                showAlertDialog();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                alignment: Alignment.center,
              ),
              child: Text(
                "Click Me",
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 26, 5, 5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showAlertDialogwithicon();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                alignment: Alignment.center,
              ),
              child: Text(
                "alert with icon",
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 26, 5, 5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                showsimpledialog();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                alignment: Alignment.center,
              ),
              child: Text(
                "show dialog",
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 26, 5, 5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showbottomsheet();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                alignment: Alignment.center,
              ),
              child: Text(
                "show bottom sheet",
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 26, 5, 5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
