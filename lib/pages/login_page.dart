import 'package:flutter/material.dart';
import 'package:flutter_new_start/bg_image.dart';
import 'package:flutter_new_start/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: Stack(
         fit: StackFit.expand,
        children: [
          bgImage(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                    child: Column(
              children: <Widget>[
                Card(
                  child: Form(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("Email"),
                              hintText: "Enter Your Email"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("Password"),
                              hintText: "Enter Your Password"),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context,'/Home');
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage())
                          // );
                        }, child: Text("Click here"))
                      ],
                    ),
                  )),
                  
                ),
                
              ],
                    ),
                  ),
            ),
          ),

        ],
      )
    );
  }
}
