import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    super.key,
    required this.input,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final String input;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset("assets/card_bg.jpg"),
        SizedBox(
          height: 20,
        ),
        Text(input ,
        style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold
        ),),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _nameController,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter something here",
            labelText: "input",
          ),
        )


    ],
    );
  }
}