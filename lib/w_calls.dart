// ignore_for_file: prefer_const_constructors

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
          leading: IconButton(
          onPressed: (){},
         icon:Text("Düzenle",
         style:TextStyle(
           color: Colors.blue,
           fontSize: 10
         ),
         )
         ),
         actions: [
           SizedBox(
             height: 80,
             width: 80,
            child:IconButton(
             onPressed: (){},
            icon: Icon(Icons.call_rounded)
           
            ))
         ]
       ),
       body:ListView(
        children: [
          Text("Calls",
          style: TextStyle(
            fontSize: 40),
            ),
            SizedBox(
              height: 10,
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
        ]
       )
       
       
    );
  }
}