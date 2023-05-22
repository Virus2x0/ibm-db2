import 'package:flutter/material.dart';

class bgImage extends StatelessWidget {
  const bgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/card_bg.jpg",
    fit: BoxFit.cover,
    color: Colors.black.withOpacity(0.2),
    colorBlendMode: BlendMode.color,);
  }
}