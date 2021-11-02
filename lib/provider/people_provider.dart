// ignore_for_file: prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class PeopleProvider with ChangeNotifier {
  List<String>? nameList = <String>[];
  List<String>? surnameList = <String>[];
  List<String>? numList = <String>[];

setListuserData(String name, String surname, String num) {
    nameList!.add(name);
    surnameList!.add(surname);
    numList!.add(num);
    saveListContact();
    notifyListeners();
  }
   saveListContact() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setStringList("nameList", nameList!);
    await prefs.setStringList("surnameList", surnameList!);
    await prefs.setStringList("numberList", numList!);
  }

   getContact() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    nameList = (prefs.getStringList("nameList") != null
        ? prefs.getStringList("nameList")
        : <String>[]);
    surnameList = (prefs.getStringList("surnameList") != null
        ? prefs.getStringList("surnameList")
        : <String>[]);
    numList = (prefs.getStringList("numList") != null
        ? prefs.getStringList("numList")
        : <String>[]);
        
    notifyListeners();
   }
}
