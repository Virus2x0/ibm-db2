import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _nameController = TextEditingController();
  var input = "change me";
  var url =  Uri.parse('https://jsonplaceholder.typicode.com/photos');
  var data = null;
  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async{
    var res = await http.get(url);
    print(res.body);
    data = jsonDecode(res.body);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text("Nice App") ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(9),
          child: data != null ? ListView.builder(
            itemBuilder: (context,index){
            return ListTile(
              subtitle: Text("ID: ${data[index]["id"]}"),
              leading: Image.network(data[index]["thumbnailUrl"] ),
              title: Text(data[index]["title"]),
            );
          }
          , 
          itemCount: data.length,):Center(child: CircularProgressIndicator(),)
        ),
      ),
      drawer: MyDrawer(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: (){
        input = _nameController.text; 
        setState(() {
          
        });
      },
      child: Icon(Icons.edit),)
    );
  }
}