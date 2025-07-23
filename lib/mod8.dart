import 'package:flutter/material.dart';

class mod8 extends StatelessWidget {
  const mod8({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Mod 8"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 20.0,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(

              keyboardType: TextInputType.phone,
              controller: phoneController,
              decoration: InputDecoration(
                hintText: "Enter your Phone Number",
                labelText: "Phone Number",
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 189, 3, 3),
                ),
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              if(phoneController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Phone number is empty"))
                );

              }
              else if(phoneController.text.length != 11) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Phone number is not correct"))
                );
              }
              else{
                print(phoneController.text);
              }
            },
            child: Text("Submit"),
          ),
        
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true, // To hide the password input
              controller: passController,
              decoration: InputDecoration(
                hintText: "Enter your Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 189, 3, 3),
                ),
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        
          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              print(passController.text);
            },
            child: Text("Login"),
          ),
        
          SizedBox(height: 20),

          ElevatedButton(onPressed: (){

            phoneController.clear();
            passController.clear();
          }, child: Text("clear", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 190, 15, 15)))),

          SizedBox(height: 20),

          Container(
            alignment: Alignment.center,
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 253, 0, 0),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
                width: 5.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  offset: Offset(4, 5),
                  
                ),
              ],
            ),
            child: Text("This is a container", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),
          ),

          SizedBox(height: 20),

          


        ],
      ),
    );
  }
}
