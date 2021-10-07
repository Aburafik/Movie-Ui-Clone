import 'package:flutter/material.dart';
import 'package:movie_app_clone/Screens/HomeScreen/home_screen.dart';
import 'package:movie_app_clone/Screens/SearchScreen/search_screen.dart';
import 'package:movie_app_clone/Utils/colors.dart';

class FavourateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgorundColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.chevron_left,
                color: Colors.white,
                size: 40,
              ),
              headerText(text: "Favourates"),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: categoryTileHeader(
                      title: "You are watching The Lost Town")),
              Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      homeTitles(textTile: "The Lost Town ....."),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: primaryColor.withOpacity(0.5),
                        child: Center(
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // Container(
                      //     width: 300,
                      //     child: Divider(
                      //       color: Colors.white,
                      //     ))
                      playLenght()
                    ],
                  ),
                ),
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/movieTitle.jpg"))),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: categoryTileHeader(title: "Favourate")),
              actormovies()
            ],
          ),
        ));
  }
}

Text headerText({required String text}) {
  return Text(
    text,
    style: TextStyle(
        color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
  );
}

playLenght() {
  return Slider(
      max: 50,
      min: 0.0,
      inactiveColor: Colors.white.withOpacity(0.2),
      activeColor: primaryColor,
      value: 20,
      onChanged: (value) {});
}
