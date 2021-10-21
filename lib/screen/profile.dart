import 'package:flutter/material.dart';
import 'package:whatsappp/screen/navigation_bar.dart';
import 'package:whatsappp/screen/w_chats.dart';
import 'package:whatsappp/screen/w_status.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}
void changeScreen(BuildContext _context, Widget _widget) {
  Navigator.push(_context, MaterialPageRoute(builder: (_context) => _widget));
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          centerTitle: true,
          title: const Text("Profil Bilgisi",
          style: TextStyle(
            color: Colors.green
          ),),
      ),
       body:Center(
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Container(
              
              child: const Text("Lütfen isminizi ve tercihinize bağlı profil fotoğrafınızı belirleyin",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey
              ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(60),
                child: FloatingActionButton(
                 backgroundColor: Colors.grey.shade300,
                 
                 onPressed: (){},
                 child: const Icon(Icons.add_a_photo,
                 color: Colors.grey                
               )
            )          
        ),
         Container(
              padding: const EdgeInsets.all(50),
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: 
                 const InputDecoration(hintText:"Adınızı Yazın",
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.grey)
                 ) ),
              )
            ),
             Container(
               padding: const EdgeInsets.all(50),
               child: ElevatedButton(onPressed: () {
                 changeScreen(context, const NavigationBar());
               },
               style:ElevatedButton.styleFrom(
                 primary: Colors.green,
                 padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
               ),
               child: const Text("İleri",
               style: TextStyle(
                 fontSize:20
               ),
               ),)
            )
          ]
       )
       ) 
    );
  }
}