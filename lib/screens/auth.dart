// ignore_for_file: prefer_final_fields, unused_element

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tourist_guide_in_iraq/models/trip.dart';
import 'package:tourist_guide_in_iraq/screens/login_screens.dart';
import 'package:tourist_guide_in_iraq/screens/taps_screens.dart';
import 'package:tourist_guide_in_iraq/widgets/app_data.dart';

class Auth extends StatefulWidget {
    final List<Trip> favoritesTrips;

   const Auth(this.favoritesTrips, {super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
   List<Trip> _favoritesTrips = [];
 void _manageFavorites(String tripTd) {
    final exiestingindex =
        _favoritesTrips.indexWhere((trip) => trip.id == tripTd);
    if (exiestingindex >= 0) {
      setState(() {
        _favoritesTrips.removeAt(exiestingindex);
      });
    } else {
      setState(() {
        _favoritesTrips.add(Trips_data.firstWhere((trip) => trip.id == tripTd));
      });
    }
  }

    bool _isfavorites(String id) {
    return _favoritesTrips.any((trip) => trip.id == id);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return  TapsScreens(_favoritesTrips) ;
          } else {
            return const LoginScreens();
            
          }
        },
      ),
    );
  }
}