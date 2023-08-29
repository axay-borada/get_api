import 'package:flutter/material.dart';

class signin_Screen extends StatelessWidget {
  const signin_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("signup Screen"),
      ),
      body: Column(
        children: [
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
