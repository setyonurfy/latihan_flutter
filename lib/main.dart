import 'package:flutter/material.dart';
import 'package:tugas1/pages/dental_services_page.dart';
import 'package:tugas1/pages/home_page.dart';
import 'package:tugas1/pages/profile_page.dart';

void main() {
  runApp(const DentalBottomNavApp());
}

class DentalBottomNavApp extends StatefulWidget {
  const DentalBottomNavApp({super.key});

  @override
  _DentalBottomNavAppState createState() => _DentalBottomNavAppState();
}

class _DentalBottomNavAppState extends State<DentalBottomNavApp> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    HomePage(),
    DentalServicesPage(),
    ProfilePage()
  ];

  // static final List<Widget> pages = <Widget>[
  //   HomePage(),
  //   DentalServicesPage(),
  //   ProfilePage(),

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dental App With Bottom Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dental App'),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services),
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
