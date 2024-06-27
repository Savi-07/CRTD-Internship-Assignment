import 'package:flutter/material.dart';

class mail extends StatefulWidget {
  const mail({super.key});

  @override
  State<mail> createState() => _mailState();
}

class _mailState extends State<mail> {
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