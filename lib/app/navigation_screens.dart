import 'package:book_space/ui/screens/categories/categories_screen.dart';
import 'package:book_space/ui/screens/home/home_screen.dart';
import 'package:book_space/ui/screens/my_library/my_library_screen.dart';
import 'package:book_space/ui/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  final String? uid;

  const NavigationScreen({Key? key, this.uid}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoriesScreen(),
    MyLibraryScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'My Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
