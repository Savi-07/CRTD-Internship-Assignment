import 'package:flutter/material.dart';

class option extends StatefulWidget {
  const option({super.key});

  @override
  State<option> createState() => _optionState();
}

class _optionState extends State<option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("HIRE ME UP", style: TextStyle(fontSize: 34, ),textAlign: TextAlign.center,))
        ],
      ),
    );
  }
}