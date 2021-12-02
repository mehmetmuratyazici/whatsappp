// ignore_for_file: prefer_const_constructors, unused_label, unused_local_variable, annotate_overrides

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsappp/provider/people_provider.dart';
import 'package:whatsappp/screen/contacts_add.dart';
import 'package:whatsappp/screen/w_chats.dart';

class Contacts extends StatefulWidget {
  const Contacts({ Key? key }) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

void changeScreen(BuildContext _context, Widget _widget) {
  Navigator.push(_context, MaterialPageRoute(builder: (_context) => _widget));
}


class _ContactsState extends State<Contacts> {

    initState() {
    Provider.of<PeopleProvider>(context, listen: false).getContact();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     final peopleProvider = Provider.of<PeopleProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Sohbet"),
        centerTitle: true,
        actions: [ 
          SizedBox(
           height: 80,
           width: 80,       
           child:IconButton(onPressed: (){
                changeScreen(context,Chats());
           },
           icon:Text("Vazgeç",
           style: TextStyle(
             fontSize:15),
           ))
          ),
        ],      
      ),

       body: ListView(
         children: [        
            ListTile(
               title: const Text("Yeni Grup",
               style:TextStyle(
                 color: Colors.blue) 
                 ),
               leading:SizedBox(
               width: 40,
                 height: 40,
                 child:FloatingActionButton(
                 heroTag: null,
                 backgroundColor: Colors.grey.shade700,
                 onPressed: () {},
                 child: const Icon(Icons.people,
                 color: Colors.blue,
                 size: 25,),
               ), 
               ) 
               ),
           
           
             ListTile(
               title: const Text("Yeni Kişi",
               style:TextStyle(
                 color: Colors.blue) 
                 ),
               leading:SizedBox(
                width: 40,
                 height: 40,
                 child:FloatingActionButton(
                 heroTag: null,
                 backgroundColor: Colors.grey.shade700,
                onPressed: () {
                   changeScreen(context,ContactsAdd());
                 },
                 child: const Icon(Icons.person_add_alt_1,
                 color: Colors.blue,
                 size: 25,),
              ), 
               ) 
               ),
        
         ]
       )
      );
    
  }
}