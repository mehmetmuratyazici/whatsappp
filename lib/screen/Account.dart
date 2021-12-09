
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Acoount extends StatefulWidget {
  const Acoount({ Key? key }) : super(key: key);

  @override
  _AcoountState createState() => _AcoountState();
}

class _AcoountState extends State<Acoount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hesap"),
      ),
      body: ListView(
        children: [
          Card(
               margin: EdgeInsets.only(top:10),
              child: ListTile(
                title: Text("Gizlilik"),
                    onTap: (){},
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                   Icon(                   
                        Icons.arrow_forward_ios_rounded,
                        size:12,                     
                      ),
                ]),
            ),
              ),
               Card(
               margin: EdgeInsets.only(top:1),
              child: ListTile(
                title: Text("Güvenlik"),
                    onTap: (){},
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                   Icon(                   
                        Icons.arrow_forward_ios_rounded,
                        size:12,                     
                      ),
                ]),
            ),
              ),
               Card(
               margin: EdgeInsets.only(top:1),
               child: ListTile(
                title: Text("İki Adımlı Doğrulama"),
                    onTap: (){},
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                   Icon(                   
                        Icons.arrow_forward_ios_rounded,
                        size:12,                     
                      ),
                ]),
            ),
              ),
               Card(
               margin: EdgeInsets.only(top:1),
               child: ListTile(
                title: Text("Numara Değiştir"),
                    onTap: (){},
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                   Icon(                   
                        Icons.arrow_forward_ios_rounded,
                        size:12,                     
                      ),
                ]),
            ),
              ),
                 Card(
               margin: EdgeInsets.only(top:20),
              child: ListTile(
                title: Text("Hesap Bilgilerini Talep Edin"),
                    onTap: (){},
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                   Icon(                   
                        Icons.arrow_forward_ios_rounded,
                        size:12,                     
                      ),
                ]),
            ),
              ),
               Card(
               margin: EdgeInsets.only(top:1),
              child: ListTile(
                title: Text("Hesabımı Sil"),
                    onTap: (){},
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                   Icon(                   
                        Icons.arrow_forward_ios_rounded,
                        size:12,                     
                      ),
                ]),
            ),
              ),
        ],
        ),
      
    );
  }
}