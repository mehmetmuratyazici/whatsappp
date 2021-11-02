// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  bool selected = false;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading:IconButton(
          onPressed: () {},
          // ignore: prefer_const_constructors
          icon:Text("Privacy",
          style:TextStyle(
            color: Colors.blue,
            fontSize: 12)
            ),
     ), 
      ),
       
      
      body:ListView(
        children: [
          Text("Status",
          style: TextStyle(
            fontSize: 40),
            ),
          Padding(padding: EdgeInsets.only(right: 5,left: 5),
      
          child:TextField(
          
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
          ),
          Card(
             margin: EdgeInsets.only(top: 10),
          child:
          ListTile(
              title: const Text("My Status"),
              subtitle: const Text("Add to my status"),
              leading: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.grey,
                onPressed: () {},
                child: const Icon(Icons.person_add_alt_1_rounded),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(                 
                    height: 30,
                    child:FloatingActionButton(
                      heroTag: null,
                      backgroundColor: Colors.grey.shade700,
                      onPressed: () {},
                      child: const Icon(Icons.camera_alt_rounded,
                      size: 20,
                      
                      color: Colors.blue,),
                      hoverColor: Colors.transparent),
                     ),
                SizedBox(
                  width: 50,
                  height: 30,
                  child:FloatingActionButton(
                    heroTag: null,
                    backgroundColor: Colors.grey.shade700,
                      onPressed: () {},
                     child: const Icon(Icons.edit,
                     size: 20,                 
                      color: Colors.blue),
                      hoverColor: Colors.transparent),
                     
                      

                )
                
                  
                ],
              ))
          )
        ],
          
      ),
    );
  }
}
