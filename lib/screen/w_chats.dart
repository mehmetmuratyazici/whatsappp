// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsappp/screen/contacts.dart';

class Chats extends StatefulWidget {
  const Chats({ Key? key }) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}


void changeScreen(BuildContext _context, Widget _widget) {
  Navigator.push(_context, MaterialPageRoute(builder: (_context) => _widget));
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
       onPressed: () {
          changeScreen(context, Contacts());

       },
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
            Padding(
            padding: EdgeInsets.only(right: 5,left: 5),
            child:TextFormField(               
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,
              color: Colors.grey,),
              focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey),
              ),
              hintText: 'Search',
              isDense: true,
              border: OutlineInputBorder()
            ),
          ),
            )
          
          
        ],
      )
      
    );
  }
}