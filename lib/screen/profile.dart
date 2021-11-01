// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsappp/screen/navigation_bar.dart';


class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}
void changeScreen(BuildContext _context, Widget _widget) {
  Navigator.push(_context, MaterialPageRoute(builder: (_context) => _widget));
}

class _ProfileState extends State<Profile> {
   bool _isNameValid = false;

  TextEditingController NameController = TextEditingController();

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
                inputFormatters: [                 
                  LengthLimitingTextInputFormatter(13),
                ],
                controller: NameController,
                cursorColor: Colors.grey,
                decoration: 
                  InputDecoration(hintText:"Adınızı Yazın",
                 errorText:_isNameValid 
                 ? "Name should be not null !"
                 :null,
                 // ignore: prefer_const_constructors
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.grey),
                   borderRadius: BorderRadius.all(Radius.circular(10.0))
                 )
                  ),
              )
            ),
             Container(
               padding: const EdgeInsets.all(50),
               child: ElevatedButton(onPressed: () {
                 print( NameController.value.isComposingRangeValid);
                  if (NameController.text != "") {
                    setState(() {
                      _isNameValid = false;
                    });
                    changeScreen(context, const NavigationBar());
                  } else {
                    setState(() {
                      _isNameValid = true;
                    });
                  }
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