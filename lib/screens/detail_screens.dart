// ignore_for_file: camel_case_types, unnecessary_string_interpolations, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:tourist_guide_in_iraq/widgets/app_data.dart';

class detailScreens extends StatelessWidget {
  const detailScreens(this.manageFavorites, this.isfavorites, {super.key});
  static const screensRouts = '/detail-trips';
  final Function manageFavorites;
  final Function isfavorites;

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedTrip = Trips_data.firstWhere((trip) =>
        trip.id ==  tripId); //  عن طريق هذه المتغير راح نخزن  الايدي الي هو نفسه راح جلبه  حتى نفتح صفحه و نجيب معلوماتها و نجلب صوره
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text("${selectedTrip.title}",style: const TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                selectedTrip.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              alignment: Alignment.topRight,
              child: Text(

                "ألانشطة المتوفرة",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                itemCount: selectedTrip.activities.length,
                itemBuilder: (context, index) => Card(
                  elevation: 0.7,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectedTrip.activities[index]),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              alignment: Alignment.topRight,
              child: Text(
                "الخدمات التي تتوفر في هذا المكان السياحي",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                itemCount: selectedTrip.program.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("${index + 1}"),
                      ),
                      title: Text(selectedTrip.program[index]),
                    ),
                    const Divider(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[300],
        child: Icon(isfavorites(tripId) ? Icons.star : Icons.star_border,color: Colors.amber,),
        onPressed:()=> manageFavorites(tripId),
      ),
    );
  }
}
