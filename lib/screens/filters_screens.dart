// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tourist_guide_in_iraq/widgets/drawer.dart';

class FiltersScreens extends StatefulWidget {
  const FiltersScreens(this.saveFilters, this.cuurentsFilters);
  final Function saveFilters;
  final Map<String, bool> cuurentsFilters;
  static const screensRouts = '/filters-trips';

  @override
  State<FiltersScreens> createState() => _FiltersScreensState();
}

class _FiltersScreensState extends State<FiltersScreens> {
  var _Summer = false;
  var _Winter = false;
  var _Families = false;
  var _religion = false;
  @override
  void initState() {
    _Summer = widget.cuurentsFilters['summer']!;
    _Winter = widget.cuurentsFilters['winter']!;
    _Families = widget.cuurentsFilters['family']!;
    _religion = widget.cuurentsFilters['religion']!;
    super.initState();
  }

//  هنا راح نسوي بلد ميثود حتى ما يكبر الكود فقط نمرر المطلوب و بس نستدعي و نمرر
  Widget buildSwitchListTile(String title, String subtitle, var currentVaiue,
      Function(bool) updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: currentVaiue,
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple[800],
          title: const Text("الفلترة",style: TextStyle(color: Colors.white),),
          actions: [
            IconButton(
                onPressed: () {
                  final selectedfilters = {
                    'summer': _Summer,
                    'winter': _Winter,
                    'family': _Families,
                    'religion': _religion,
                  };
                  widget.saveFilters(selectedfilters);
                },
                icon:  const Icon(Icons.save,color: Colors.white,))
          ],
        ),
        drawer: const drawer(),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView(
                children: [
                   buildSwitchListTile("الرحلات الدينية فقط ",
                      "أظهار الرحلات التي تخص الاماكن المقدسة و الدينيه فقط فقط", _religion, (newValue) {
                    setState(() {
                      _religion = newValue;
                    });
                  }),
                  const Divider(),
                  buildSwitchListTile("الرحلات الصيفية فقط ",
                      "أظهار الرحلات في فصل الصيف فقط", _Summer, (newValue) {
                    setState(() {
                      _Summer = newValue;
                    });
                  }),
                  const Divider(),
                  buildSwitchListTile("الرحلات الشتوية فقط ",
                      "أظهار الرحلات في فصل الشتاء فقط", _Winter, (newValue) {
                    setState(() {
                      _Winter = newValue;
                    });
                  }),
                  const Divider(),
                  buildSwitchListTile(
                      "الرحلات للعائلات فقط",
                      "أظهار الرحلات التي تخص العائلات فقط",
                      _Families, (newValue) {
                    setState(() {
                      _Families = newValue;
                    });
                  }),
                ],
              ),
            )
          ],
        ));
  }
}
