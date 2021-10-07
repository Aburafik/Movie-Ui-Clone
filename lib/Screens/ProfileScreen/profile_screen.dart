import 'package:flutter/material.dart';
import 'package:movie_app_clone/Screens/Favourates/favourates_screen.dart';
import 'package:movie_app_clone/Screens/HomeScreen/home_screen.dart';
import 'package:movie_app_clone/Utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgorundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 40,
            ),
            headerText(text: "Profile"),
            Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/user.jpg"),
                      radius: 40,
                    ),
                    categoryTileHeader(title: "Citizen Raf"),
                    homeTitles(textTile: "Flutter Developer from Ghana"),
                  ],
                ),
              ),
            ),
            ///////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                statitics("Watched", "500"),
                statitics("Followers", "100"),
                statitics("Faviurate", "3"),
              ],
            ),

            Expanded(
              child: Container(
                color: Color(0xff161616),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      leading: Icon(
                        Icons.supervised_user_circle,
                        color: primaryColor,
                      ),
                      title: categoryTileHeader(title: "Language"),
                      trailing: Text(
                        "English",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ListTile(
                      horizontalTitleGap: 0,
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        Icons.phone_android,
                        color: primaryColor,
                      ),
                      title: categoryTileHeader(title: "Phone number"),
                      trailing: Text(
                        "English",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    userselectors(
                        icon: Icons.notification_important,
                        title: "Notification"),
                    userselectors(
                        icon: Icons.alarm_off, title: "Privacy settings"),
                    userselectors(
                        icon: Icons.support, title: "Contact Support"),
                    userselectors(icon: Icons.logout, title: "Log out")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

statitics(String title, value) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      children: [categoryTileHeader(title: value), homeTitles(textTile: title)],
    ),
  );
}

userselectors({required IconData icon, required String title}) {
  return ListTile(
    horizontalTitleGap: 0,
    contentPadding: EdgeInsets.zero,
    leading: Icon(
      icon,
      color: primaryColor,
    ),
    title: categoryTileHeader(title: title),
    trailing: Icon(
      Icons.chevron_right,
      color: primaryColor,
    ),
  );
}
