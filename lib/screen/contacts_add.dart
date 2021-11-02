// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatsappp/provider/people_provider.dart';



class ContactsAdd extends StatefulWidget {
  const ContactsAdd({ Key? key }) : super(key: key);
  

  @override
  _ContactsAddState createState() => _ContactsAddState();
}

class _ContactsAddState extends State<ContactsAdd> {

  final nameController = TextEditingController();
  final surnameController=TextEditingController();
  final numController=TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    final peopleProvider = Provider.of<PeopleProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Kişi"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
             Navigator.pop(context);
          },
         icon:Text("Vazgeç",
         style:TextStyle(
           color: Colors.blue,
           fontSize: 12
         ),
         )
         ),
         actions: [
           SizedBox(
             height: 80,
             width: 80,
            child:IconButton(
             onPressed: (){
               peopleProvider.setListuserData(
               nameController.text,
               surnameController.text,
               numController.text,
              );
               Navigator.pop(context);

             },
            icon: Text("Kaydet",
            style:TextStyle(
              color: Colors.blue,
              fontSize: 12
            ) ,
            ))
           )
         ],           
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                cursorColor: Colors.grey,                
                decoration: InputDecoration(hintText: "Ad",
                focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey),
              ),
              ),
                
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(  
                controller: surnameController,
                cursorColor: Colors.grey,            
                decoration: InputDecoration(hintText: "Soyad",
                focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey),
              ),
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: numController,
                cursorColor: Colors.grey, 
                decoration: InputDecoration(hintText: "Numara",
                focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey),
              ),),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(11)
                ]
              ),
            ),
          ]
      ),
          
      )
    );
  }
}