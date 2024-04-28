// ignore_for_file: file_names, camel_case_types
import 'package:flutter/material.dart';
import 'package:tourist_guide_in_iraq/widgets/app_data.dart';
import 'package:tourist_guide_in_iraq/widgets/category_item.dart';

class categoriesScreens extends StatelessWidget {
  const categoriesScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
            padding:  const EdgeInsets.all(10),
            gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 7/8,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
            children: Categories_data.map(
              (catgoresData5) => categoryItem(
                title: catgoresData5.title,
                imageUrl: catgoresData5.imageUrl,
                id: catgoresData5.id,
              ),
            ).toList()
            ));
  
}}