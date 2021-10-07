import 'package:flutter/material.dart';
import 'package:movie_app_clone/Screens/Favourates/favourates_screen.dart';
import 'package:movie_app_clone/Screens/HomeScreen/home_screen.dart';
import 'package:movie_app_clone/Screens/ProfileScreen/profile_screen.dart';
import 'package:movie_app_clone/Screens/SearchScreen/search_screen.dart';
import 'package:movie_app_clone/Utils/colors.dart';

class BottomNavBars extends StatefulWidget {
  const BottomNavBars({Key? key}) : super(key: key);

  @override
  _BottomNavBarsState createState() => _BottomNavBarsState();
}

class _BottomNavBarsState extends State<BottomNavBars> {
  int selectedItem = 0;

  onTap(index) {
    setState(() {
      selectedItem = index;
    });
  }

  List pages = [
    HomeScreen(),
    SearchScreen(),
    FavourateScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        body: pages[selectedItem],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItem,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          backgroundColor: backgorundColor,
          selectedItemColor: primaryColor,
          unselectedItemColor: textColor,
          elevation: 0.0,
          iconSize: 35,
          items: [
            bottomNavBarItem(icon: Icons.home, label: ""),
            bottomNavBarItem(icon: Icons.search, label: ""),
            bottomNavBarItem(icon: Icons.favorite, label: ""),
            bottomNavBarItem(icon: Icons.person, label: ""),
          ],
        ),
      ),
    );
  }
}

BottomNavigationBarItem bottomNavBarItem(
    {required IconData icon, required String label}) {
  return BottomNavigationBarItem(
      icon: Icon(
        icon,
        // color: textColor,
      ),
      label: label);
}
