// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({ Key? key }) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
          onPressed: () {},
         
          // ignore: prefer_const_constructors
          icon:Text("Düzenle",
          style:TextStyle(
            fontSize: 10,
            color: Colors.blue)
            ),
     ),
      actions: [
       IconButton(
       onPressed: () {},
       icon: Icon(Icons.edit_outlined,
       color: Colors.blue,
       )
     ),  
  ],
      ),
      body:ListView(
        children: [
          Text("Chats",
          style: TextStyle(
            fontSize: 40),
            ),
            TextFormField(               
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,
              color: Colors.grey,),
              focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey),
                 borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              hintText: 'Search',
              isDense: true,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
             prefixIcon: Text("Toplu Mesaj Listeleri") 
            ),

          )          
          
        ],
      )
      
    );
  }
}