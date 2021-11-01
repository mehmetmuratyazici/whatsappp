// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({ Key? key }) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Sohbet"),
        centerTitle: true,
        actions: [
          SizedBox(
           height: 80,
           width: 80,
        
           child:IconButton(onPressed: (){},
           icon:Text("Vazgeç",
           style: TextStyle(
             fontSize:15),
           )) 
          ),
          
        ],      
      ),
     
    );
  }
}