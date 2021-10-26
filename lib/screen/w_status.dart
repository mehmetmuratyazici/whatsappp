// ignore_for_file: prefer_const_constructors

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
        title: const Text(
          "Status",
        ),
        actions: [
          IconButton(
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            iconSize: 80,
            alignment: Alignment.topRight,
            icon: const Text(
              "Privacy",
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          const TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,
              color: Colors.grey,),
              focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey),
              ),
              hintText: 'Search',
              isDense: true,
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
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt_rounded,
                      color: Colors.blue,),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit,
                      color: Colors.blue,),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent)
                ],
              ))
          )
        ],
          
      ),
    );
  }
}
