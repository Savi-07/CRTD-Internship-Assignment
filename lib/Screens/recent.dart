import 'package:flutter/material.dart';

class recent extends StatefulWidget {
  const recent({super.key});

  @override
  State<recent> createState() => _recentState();
}

class _recentState extends State<recent> {
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