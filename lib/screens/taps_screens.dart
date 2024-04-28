import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tourist_guide_in_iraq/models/trip.dart';
import 'package:tourist_guide_in_iraq/screens/categories_Screens.dart';
import 'package:tourist_guide_in_iraq/screens/favorites_screens.dart';
import 'package:tourist_guide_in_iraq/screens/acount.dart';
import 'package:tourist_guide_in_iraq/screens/login_screens.dart';
import 'package:tourist_guide_in_iraq/widgets/drawer.dart';

class TapsScreens extends StatefulWidget {
  final List<Trip> favoritesTrips;

  const TapsScreens(this.favoritesTrips, {super.key});
  @override
  State<TapsScreens> createState() => _TapsScreensState();
}

class _TapsScreensState extends State<TapsScreens> {
  
  void _selectScrens(int index) {
    setState(() {
      _selectScrensindex = index;
    });
  }

  int _selectScrensindex = 0;
  late List<Map<String, Widget>> _screens;

  @override
  void initState() {
    _screens = [
      {
        'screens': const categoriesScreens(),
      },
      {
        'screens': favoritesScreens(widget.favoritesTrips),
      },
       {
        'screens':const acountScreen(),
      },

    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        centerTitle: true,
        title: const Text(
          "الدليل السياحي",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: const drawer(),
      body: _screens[_selectScrensindex]['screens'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScrens,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        currentIndex: _selectScrensindex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "التصنيفات"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "المفضلات"),
           BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "الحساب"),
        ],
      ),
    ); 
          } else {
            return const LoginScreens();
            
          }
        },
      ),
    );
  }
}
