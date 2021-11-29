
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsappp/screen/login.dart';



class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key, required String title }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}
void changeScreen(BuildContext _context, Widget _widget) {
  Navigator.push(_context, MaterialPageRoute(builder: (_context) => _widget));
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,     
          children:  [
            Container(
              
              padding: const EdgeInsets.all(20),
              child: const Text("WhatsAppp'a Hoş Geldiniz",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.green
              ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(120),
              child: const Text("Gizlilik ilkemizi okuyun.Hizmet Koşulları'nı kabul etmek için 'Kabul Et ve Devam Et'seçeneğine dokunun.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey
              ),
              ),

            ),
            Container(
               padding: const EdgeInsets.only(bottom: 50),
               child: ElevatedButton(onPressed: () {
                  changeScreen(context, const Login());
                 },
               style:ElevatedButton.styleFrom(
                 primary: Colors.green,
                 padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
               ),
               child: const Text("Kabul Et ve Devam Et",
               style: TextStyle(
                 fontSize:20
               ),
               ),)
               
            )

           
          ],
          
          
        ),
      )
      
    
      
        
      
        
      );
    
  }
}