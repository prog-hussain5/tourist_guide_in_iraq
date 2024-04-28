// ignore_for_file: avoid_unnecessary_containers, camel_case_types, sort_child_properties_last, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tourist_guide_in_iraq/screens/trips_screens.dart';

class categoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const categoryItem(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.id});


  void selsct_category(BuildContext context) {
    Navigator.of(context).pushNamed(
      tripsScreens.screenRout,
     arguments: {
      'id': id,
      'title': title,
     }
    ); 
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selsct_category(context),
      splashColor:
          Theme.of(context).primaryColor, // من اضغط يطلع لون محدد و مقوس
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            //  تستخدم بس حتى نجعل الحواف الصوره مقوسه
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline6, //هيج صار لان من الماين سوينه خطوط و ثيمات ثابته
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.4),
            ),
          )
        ],
      ),
    );
  }
}
