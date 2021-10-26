// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
        ),
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.only(bottom: 5,top: 10),
            child: ListTile(
              title: const Text(""),
              subtitle: const Text(""),
              leading: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.grey,
                onPressed: () {},
                child: const Icon(Icons.person),
              ),
             trailing: FloatingActionButton(
               backgroundColor: Colors.grey,
               mini: true,
               onPressed: (){},
               child:Icon(Icons.qr_code)
             ),
              ) ,
          ),
          Card(
            margin: EdgeInsets.only(top: 10),
            
           child: ListTile(
             title: Text("Yıldızlı Mesajlar "),
             leading: FloatingActionButton(
               mini: true,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),                 
              ),
                heroTag: null,
                backgroundColor: Colors.yellow,
                onPressed: () {},
                child: const Icon(Icons.star_border_purple500_rounded,
                color: Colors.white),   
                           
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded ),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent),
                ]
              ),
            
           )
          

           ),
           Card(
              margin: EdgeInsets.only(top: 1),
            
           child: ListTile(
             title: Text("Bağlı Cihazlar "),
             leading: FloatingActionButton(
               mini: true,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),                 
              ),
                heroTag: null,
                backgroundColor: Colors.green.shade700,
                onPressed: () {},
                child: const Icon(Icons.computer,
                color: Colors.white),   
                           
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded ),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent),
                ]
              ),            
           )
           ),
           Card(
              margin: EdgeInsets.only(top: 10),
            
           child: ListTile(
             title: Text("Hesap"),
             leading: FloatingActionButton(
               mini: true,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),                 
              ),
                heroTag: null,
                backgroundColor: Colors.blue,
                onPressed: () {},
                child: const Icon(Icons.vpn_key_rounded,
                color: Colors.white),   
                           
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded ),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent),
                ]
              ),            
           )
           ),
           Card(
             margin: EdgeInsets.only(top: 1),
            
           child: ListTile(
             title: Text("Sohbetler "),
             leading: FloatingActionButton(
               mini: true,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),                 
              ),
                heroTag: null,
                backgroundColor: Colors.green,
                onPressed: () {},
                child: const Icon(Icons.call,
                color: Colors.white),   
                           
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded ),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent),
                ]
              ),            
           )
           ),
           Card(
              margin: EdgeInsets.only(top: 1),
            
           child: ListTile(
             title: Text("Bildirimler"),
             leading: FloatingActionButton(
               mini: true,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),                 
              ),
                heroTag: null,
                backgroundColor: Colors.red,
                onPressed: () {},
                child: const Icon(Icons.notifications,
                color: Colors.white),   
                           
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded ),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent),
                ]
              ),            
           )
           ),
           Card(
              margin: EdgeInsets.only(top: 1),
            
           child: ListTile(
             title: Text("Saklama Alanı ve Veriler"),
             leading: FloatingActionButton(
               mini: true,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),                 
              ),
                heroTag: null,
                backgroundColor: Colors.green.shade600,
                onPressed: () {},
                child: const Icon(Icons.swap_vert_outlined,
                color: Colors.white),   
                           
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded ),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent),
                ]
              ),            
           )

           ),
           Card(
             margin: EdgeInsets.only(top: 10),
            
           child: ListTile(
             title: Text("Yardım"),
             leading: FloatingActionButton(
               mini: true,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),                 
              ),
                heroTag: null,
                backgroundColor: Colors.blue.shade500,
                onPressed: () {},
                child: const Icon(Icons.help,
                color: Colors.white),   
                           
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded ),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent),
                ]
              ),            
           )
           ),
           Card(
             margin: EdgeInsets.only(top: 1),
            
           child: ListTile(
             title: Text("Arkadaşına Öner"),
             leading: FloatingActionButton(
               mini: true,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),                 
              ),
                heroTag: null,
                backgroundColor: Colors.pink,
                onPressed: () {},
                child: const Icon(Icons.favorite,
                color: Colors.white),   
                           
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded ),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent),
                ]
              ),            
           )

           )

          
        
        ],
        ),
    );
  }
}