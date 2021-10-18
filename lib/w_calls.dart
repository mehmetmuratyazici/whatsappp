import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({ Key? key }) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.red.shade400,
          centerTitle: true,
          title: const Text("Calls"),          
          actions: [],
       ),
       body: const Center(
         
       ),
    );
  }
}