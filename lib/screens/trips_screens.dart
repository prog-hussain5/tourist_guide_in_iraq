// ignore_for_file: camel_case_types, unused_local_variable, unused_element

import 'package:flutter/material.dart';
import 'package:tourist_guide_in_iraq/models/trip.dart';
import 'package:tourist_guide_in_iraq/widgets/trip_item.dart';

class tripsScreens extends StatefulWidget {
   const tripsScreens( this.availabelsTrips, {super.key});
  static const screenRout = '/category-trips';
  final List<Trip> availabelsTrips;

  @override
  State<tripsScreens> createState() => _tripsScreensState();
}

class _tripsScreensState extends State<tripsScreens> {

 late String categorytitle;
  late List<Trip> displayTrips;
  @override
  void didChangeDependencies() {
    final roatsArgumant =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final categoryId = roatsArgumant['id'];
    categorytitle = roatsArgumant['title']!;
    //
    displayTrips = widget.availabelsTrips.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList(); // همنا راح نسوي فلتره للداتا عن طريق امر ويير ونحط داخله كاتجوري ايدي حتى يفحص
    super.didChangeDependencies();
  }


  void _removeTrip(String tripId) {
    setState(() {
      displayTrips.removeWhere((trip) => trip.id == tripId);
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            categorytitle,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple[800],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return TripItem(
            id: displayTrips[index].id,
            duration: displayTrips[index].duration,
            imageUrl: displayTrips[index].imageUrl,
            season: displayTrips[index].season,
            title: displayTrips[index].title,
            tripType: displayTrips[index].tripType,);
          },
          itemCount: displayTrips.length,
        ));
  }
}
