// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:whatsappp/screen/Account.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}


void changeScreen(BuildContext _context, Widget _widget) {
  Navigator.push(_context, MaterialPageRoute(builder: (_context) => _widget));
}


class _SettingsState extends State<Settings> {
  double _iconSize = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Settings",
        ),
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.only(bottom: 5, top: 10),
            child: ListTile(
              title: const Text(""),
              subtitle: const Text(""),
              leading: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.grey,
                onPressed: () {},
                child: const Icon(Icons.person),
              ),
              trailing:SizedBox(
                width: 30,
                height: 30,
                child:FloatingActionButton(
                  backgroundColor: Colors.grey,
                  mini: true,
                  onPressed: () {},
                  child: Icon(Icons.qr_code,
                  size: _iconSize)
                  )
                  ),
                  
            ),
          ),
          Card(
              margin: EdgeInsets.only(top:5),
              child: ListTile(
                title: Text("Yıldızlı Mesajlar "),
                leading: SizedBox(
                    width: 30,
                    height: 30,
                    child: FloatingActionButton(
                      mini: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      heroTag: null,
                      backgroundColor: Colors.yellow,
                      onPressed: () {},
                      child: const Icon(Icons.star_border_purple500_rounded,
                          color: Colors.white),
                    )),
                    onTap: (){},
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                   Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: _iconSize,
                      ),
                     
                ]),
              )),
          Card(
              margin: EdgeInsets.only(top: 1),
              child: ListTile(
                title: Text("Bağlı Cihazlar "),
                leading: SizedBox(
                  width: 30,
                  height: 30,
                  child: FloatingActionButton(
                    mini: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    heroTag: null,
                    backgroundColor: Colors.green.shade700,
                    onPressed: () {},
                    child: Icon(
                      Icons.computer,
                      color: Colors.white,
                      size: _iconSize,
                    ),
                  ),
                ),
                onTap: (){},
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: _iconSize,
                      ),
                  
                ]),
              )),
          Card(
              margin: EdgeInsets.only(top: 10),
              child: ListTile(
                title: Text("Hesap"),
                leading: SizedBox(
                  width: 30,
                  height: 30,
                  child: FloatingActionButton(
                    mini: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    heroTag: null,
                    backgroundColor: Colors.blue,
                    onPressed: () {},
                    child: Icon(
                      Icons.vpn_key_rounded,
                      color: Colors.white,
                      size: _iconSize,
                    ),
                  ),
                ),
                onTap: (){
                  changeScreen(context,Acoount());
                },
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                 Icon(Icons.arrow_forward_ios_rounded),
                    
                ]),
              )),
          Card(
              margin: EdgeInsets.only(top: 1),
              child: ListTile(
                title: Text("Sohbetler "),
                leading: SizedBox(
                    width: 30,
                    height: 30,
                    child: FloatingActionButton(
                      mini: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      heroTag: null,
                      backgroundColor: Colors.green,
                      onPressed: () {},
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: _iconSize,
                      ),
                    )),
                    onTap: (){},
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                     Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: _iconSize,
                      ),
                 
                ]),
              )),
          Card(
              margin: EdgeInsets.only(top: 1),
              child: ListTile(
                title: Text("Bildirimler"),
                leading: SizedBox(
                    width: 30,
                    height: 30,
                    child: FloatingActionButton(
                      mini: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      heroTag: null,
                      backgroundColor: Colors.red,
                      onPressed: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: _iconSize,
                      ),
                    )),
                    onTap: (){},
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                   Icon(Icons.arrow_forward_ios_rounded),
                    
                ]),
              )),
          Card(
              margin: EdgeInsets.only(top: 1),
              child: ListTile(
                title: Text("Saklama Alanı ve Veriler"),
                leading: SizedBox(
                    width: 30,
                    height: 30,
                    child: FloatingActionButton(
                      mini: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      heroTag: null,
                      backgroundColor: Colors.green.shade600,
                      onPressed: () {},
                      child: Icon(
                        Icons.swap_vert_outlined,
                        color: Colors.white,
                        size: _iconSize,
                      ),
                    )),
                    onTap: (){},
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
             
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: _iconSize,
                      ),
                     
                ]),
              )),
          Card(
              margin: EdgeInsets.only(top: 10),
              child: ListTile(
                title: Text("Yardım"),
                leading: SizedBox(
                    width: 30,
                    height: 30,
                    child: FloatingActionButton(
                      mini: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      heroTag: null,
                      backgroundColor: Colors.blue.shade500,
                      onPressed: () {},
                      child: Icon(
                        Icons.help,
                        color: Colors.white,
                        size: _iconSize,
                      ),
                    )),
                    onTap: (){},
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  
                      Icon(Icons.arrow_forward_ios_rounded),
                     
                ]),
              )),
          Card(
              margin: EdgeInsets.only(top: 1),
              child: ListTile(
                title: Text("Arkadaşına Öner"),
                leading: SizedBox(
                    width: 30,
                    height: 30,
                    child: FloatingActionButton(
                      mini: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      heroTag: null,
                      backgroundColor: Colors.pink,
                      onPressed: () {},
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: _iconSize,
                      ),
                    )),
                    
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  
                       Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: _iconSize,
                      ),
                     
                ]),
              ))
        ],
      ),
    );
  }
}
