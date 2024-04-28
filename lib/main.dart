// ignore_for_file: deprecated_member_use, prefer_final_fields, no_leading_underscores_for_local_identifiers, unused_field, equal_keys_in_map
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tourist_guide_in_iraq/models/trip.dart';
import 'package:tourist_guide_in_iraq/screens/detail_screens.dart';
import 'package:tourist_guide_in_iraq/screens/filters_screens.dart';
import 'package:tourist_guide_in_iraq/screens/acount.dart';
import 'package:tourist_guide_in_iraq/screens/login_screens.dart';
import 'package:tourist_guide_in_iraq/screens/signup_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tourist_guide_in_iraq/screens/taps_screens.dart';
import 'package:tourist_guide_in_iraq/screens/trips_screens.dart';
import 'package:tourist_guide_in_iraq/widgets/app_data.dart';
 main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  Map<String, bool> _filters = {
    'summer': false,
    'winter': false,
    'family': false,
    'religion': false,
  };
  
  List<Trip> _availabelsTrips = Trips_data;
  List<Trip> _favoritesTrips = [];

  void _changeFilters(Map<String, bool> _filterData) {
    setState(() {
      _filters = _filterData;
      _availabelsTrips = Trips_data.where((trip) {
        if (_filters['summer'] == true && trip.isInSummer != true) {
          return false;
        }
        if (_filters['winter'] == true && trip.isInWinter != true) {
          return false;
        }
        if (_filters['family'] == true && trip.isForFamilies != true) {
          return false;
        }
        if (_filters['religion'] == true && trip.isreligion != true) {
          return false;
        }
        return true;
      }).toList();
    });
  }

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
    return  MaterialApp(
       ///////// لتحويل التطبيق من اليمين الى اليسار
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'), // arabic
      ],
      //////// لتحويل التطبيق من اليمين الى اليسار

      theme: ThemeData(
          // حددنه خط و انطيناه اسم هيدلاين 5 و 6 و انطيناه مميزات حتى نستخدمه
          primarySwatch: Colors.purple,
          fontFamily: "ElMessiri",
          textTheme: ThemeData.light().textTheme.copyWith(
              headline5:  TextStyle(
                  color: Colors.purple[800],
                  fontSize: 24,
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.bold),
              headline6:  const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.bold))),
                  ///////////////////////////////////////
       debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context) =>   TapsScreens(_favoritesTrips),
        "home_screens":(context) => const acountScreen(),
        "sinUp_screens":(context) => const SignUp(),
        "login_screens":(context) => const LoginScreens(),
        tripsScreens.screenRout:(context) =>    tripsScreens(_availabelsTrips),
        detailScreens.screensRouts:(context) =>   detailScreens(_manageFavorites,_isfavorites),
       FiltersScreens.screensRouts: (context) =>   FiltersScreens(_changeFilters, _filters),
      },
  );
  }
}
