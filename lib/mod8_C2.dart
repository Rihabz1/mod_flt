import 'package:flutter/material.dart';

class mod8C2 extends StatelessWidget {
  const mod8C2({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController phone = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 192, 227, 238),
      appBar: AppBar(
        title: Text(
          "My App",
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 20.0,
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/fb.png', width: 100, height: 100)),
        
            //Image.network('https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630')
            SizedBox(height: 20),
            Text(
              "Login with Phone number and password",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
        
            Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your phone number";
                        }
                        if (value.length != 11) {
                          return "Phone number must be 11 digits";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your Phone Number",
                        labelText: "Phone Number",
                        prefixIcon: Icon(Icons.phone),
                        suffixIcon: Icon(Icons.check),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: password,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your password";
                        }
                        if (value.length < 6) {
                          return "Password must be at least 6 characters";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your password",
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.check),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: (){
                    if(formKey.currentState!.validate())
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Login Successful"))
                      );
                    }
                  }, child: Text("Login",style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
