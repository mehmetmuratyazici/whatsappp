import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({ Key? key }) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  
  bool selected= false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(      
       appBar: AppBar(                         
          title: const Text("Status",),          
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
        body:Center(
          
          child: ListView(
              children: [
             
                  const TextField(                                
                  decoration: InputDecoration(   
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),                  
                  hintText: 'Search',                  
                  isDense: true,                                                
                  ),
                ),
                
            ListTile(
              title: const Text("My Status"),
              subtitle: const Text("Add to my status"),
              leading: FloatingActionButton(
                backgroundColor: Colors.grey,
               onPressed: (){},
               child: const Icon(Icons.person_add_alt_1_rounded),
               ),
               trailing:Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [                  
                  IconButton(onPressed: (){}, 
                   icon:const Icon(Icons.camera_alt_rounded),
                   highlightColor: Colors.transparent,
                   hoverColor: Colors.transparent
                  ),

                  IconButton(onPressed: (){},
                   icon:const Icon(Icons.edit),
                   highlightColor: Colors.transparent,
                   hoverColor: Colors.transparent
                   )

                 ],
               )

              
            )
          ],

          ),
        )
     
    );
  }
}