// ignore_for_file: camel_case_types, sized_box_for_whitespace, deprecated_member_use, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tourist_guide_in_iraq/screens/filters_screens.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
    void go_to_login() {
    Navigator.of(context).pushReplacementNamed("login_screens");
  }
    final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 40),
            color: Colors.purple[800],
            child: Text(
              "دليلك السياحي",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
         ListTile(
      leading:  Icon(
        Icons.card_travel,
        size: 30,
        color: Colors.purple[800],
      ),
      title: const Text(
        "الرحلات",
        style: TextStyle(
            fontFamily: "ElMessiri", fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap:(() {
         Navigator.of(context).pushReplacementNamed('/');
      }),
    ),
    const SizedBox(height: 10,),
         ListTile(
      leading:  Icon(
        Icons.filter_list,
        size: 30,
        color: Colors.purple[800],
      ),
      title: const Text(
        "الفلترة",
        style: TextStyle(
            fontFamily: "ElMessiri", fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap:(() {
        Navigator.of(context).pushReplacementNamed(FiltersScreens.screensRouts);
      }),
    ),
    const SizedBox(height:350),
    MaterialButton( 
      onPressed:(){
               FirebaseAuth.instance.signOut();
            } ,
            shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(22),
     ),
            color: Colors.red,
            child: const Text("تسجيل الخروج",style: TextStyle(fontSize: 20,color: Colors.white),),
            )
        ],
      ),
    );
  }
}