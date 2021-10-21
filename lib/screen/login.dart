import 'package:flutter/material.dart';
import 'package:whatsappp/screen/navigation_bar.dart';
import 'package:whatsappp/screen/profile.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}
void changeScreen(BuildContext _context, Widget _widget) {
  Navigator.push(_context, MaterialPageRoute(builder: (_context) => _widget));
}  



class _LoginState extends State<Login> {
  
  TextEditingController _numberController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      body:Center( 
       
        child: Column( 
          
           mainAxisAlignment: MainAxisAlignment.center,                
          children:  [
            Container(         
              padding: const EdgeInsets.all(20),
              child: const Text("Telefon Numaranızı Girin",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green
              ),
              ),
            ),
            Container(
              // key: _formKey,
              padding: const EdgeInsets.all(60),
              child: TextFormField(
                controller: _numberController,
               cursorColor: Colors.grey,                               
                decoration:                
                 const InputDecoration(hintText:"Number",
                 focusedBorder:OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.grey),                  
                 ),
                 
                 ),
  
                 
              )
            ),
            Container(
               padding: const EdgeInsets.all(50),
               child: ElevatedButton(onPressed: () {
      
                 changeScreen(context, const Profile());
               },
               
               style:ElevatedButton.styleFrom(
                 primary: Colors.green,
                 padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
               ),
               child: const Text("Go",
               style: TextStyle(
                 fontSize:20
               ),
               ),)
            )
          ]
        ),
      ),
    );
    
  
  }

}
