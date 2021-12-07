import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsappp/provider/people_provider.dart';


class Camera extends StatefulWidget {
  const Camera({ Key? key }) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
//  initState() {
//     Provider.of<PeopleProvider>(context, listen: false).getContact();
//     super.initState();
//   }
  


  @override
  Widget build(BuildContext context) {
    // final peopleProvider = Provider.of<PeopleProvider>(context);
    return Scaffold(
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: ListView.builder(
      //         itemCount: peopleProvider.nameList!.length,
      //         itemBuilder: (BuildContext context, int index) {
      //           return Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: ListTile(
      //               tileColor: Colors.grey.shade800,
      //               leading: IconButton(
      //                   onPressed: () {
                    
      //                   },
      //                   icon: Icon(Icons.person),
      //                   highlightColor: Colors.transparent,
      //                   hoverColor: Colors.transparent,
      //                   ),
      //               subtitle: Text(peopleProvider.numList![index]),
      //               title: Text(
      //                 peopleProvider.nameList![index] +
      //                     " " +
      //                     peopleProvider.surnameList![index],
      //               ),
      //             ),
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      
    );
  }
}