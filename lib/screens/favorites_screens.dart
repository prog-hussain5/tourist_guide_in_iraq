// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:tourist_guide_in_iraq/models/trip.dart';
import 'package:tourist_guide_in_iraq/widgets/trip_item.dart';

class favoritesScreens extends StatelessWidget {
  final List<Trip> favoritesTrips;
  const favoritesScreens(this.favoritesTrips, {super.key});
  @override
  Widget build(BuildContext context) {
    if (favoritesTrips.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.dangerous_outlined,
              size: 100,
              color: Colors.red[800],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "ليس لديك اي رحلة في قائمة المفضلة",
              style: TextStyle(
                  fontFamily: "ElMessiri",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[800]),
            ),
          ],
        ),
      );
    } else {
      return ListView.builder(
        itemCount: favoritesTrips.length,
        itemBuilder: (context, index) {
          return TripItem(
            id: favoritesTrips[index].id,
            duration: favoritesTrips[index].duration,
            imageUrl: favoritesTrips[index].imageUrl,
            season: favoritesTrips[index].season,
            title: favoritesTrips[index].title,
            tripType: favoritesTrips[index].tripType,
          );
        },
      );
    }
  }
}
