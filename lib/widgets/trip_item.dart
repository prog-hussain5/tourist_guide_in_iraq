// ignore_for_file: deprecated_member_use, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:tourist_guide_in_iraq/screens/detail_screens.dart';
import '../models/trip.dart';

class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final TripsType tripType;
  final Season season;
  const TripItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.tripType,
    required this.season,
    required this.id,
  });

  String get seasonText {
    if (season == Season.Winter) {
      return "شتاء";
    }
    if (season == Season.Spring) {
      return "ربيع";
    }
    if (season == Season.Summer) {
      return "صيف";
    }
    if (season == Season.autumn) {
      return "خريف";
    }
    return "غير معروف";
  }

  String get tripsTypeText {
    if (tripType == TripsType.camping) {
      return "تخييم";
    }
    if (tripType == TripsType.Activateit) {
      return "أنشطة";
    }
    if (tripType == TripsType.exploration) {
      return "استكشاف";
    }
    if (tripType == TripsType.fun) {
      return "للمتعة";
    }
    if (tripType == TripsType.religion) {
      return "دينية";
    }
    return "غير معروف";
  }

      void selectTrip(BuildContext context) {
    Navigator.of(context)
        .pushNamed(detailScreens.screensRouts, arguments: id)
        .then((result) {
      if (result != null) {
      }
    });
      }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 7,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomRight,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  //مسؤل عن التدرج اللوني في  بلبدايه ابيض ثم يصير اسود
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8)
                      ],
                          stops: const [
                        0.6,
                        1
                      ])),
                  //
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.fade,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.today, color: Colors.amber),
                      const SizedBox(
                        width: 6,
                      ),
                      Text("$duration أيام"),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.wb_sunny, color: Colors.amber),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(seasonText),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.family_restroom, color: Colors.amber),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(tripsTypeText),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
