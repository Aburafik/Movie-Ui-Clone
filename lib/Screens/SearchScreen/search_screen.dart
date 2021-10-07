import 'package:flutter/material.dart';
import 'package:movie_app_clone/Screens/HomeScreen/home_screen.dart';
import 'package:movie_app_clone/Utils/colors.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgorundColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              appBarSection(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: seachFieldSection(),
              ),
              ListTile(
                horizontalTitleGap: 6,
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundImage: AssetImage("images/user.jpg"),
                  radius: 40,
                ),
                title: categoryTileHeader(title: "Will Smith"),
                subtitle: homeTitles(textTile: "Actor"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    categoryTileHeader(title: "Films and Series"),
                    homeTitles(textTile: "Results(220)")
                  ],
                ),
              ),
              Container(
                child: Expanded(
                  child: ListView(
                    children: [
                      actormovies(),
                      actormovies(),
                      actormovies(),
                      actormovies(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

appBarSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.chevron_left,
        color: Colors.white,
        size: 40,
      ),
      categoryTileHeader(title: "Search"),
      Container()
    ],
  );
}

seachFieldSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 300,
        height: 40,
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: textColor,
              ),
              hintText: "Will Smith",
              filled: true,
              fillColor: Colors.grey.withOpacity(0.1),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15))),
        ),
      ),
      Icon(
        Icons.camera_alt,
        color: Colors.white,
        size: 30,
      ),
    ],
  );
}

actormovies() {
  return Container(
    height: 210,
    child: Row(
      children: [
        moviecard(
          imgUrl: "images/n.jpg",
        ),
        moviecard(
          imgUrl: "images/n.png",
        ),
        moviecard(
          imgUrl: "images/g.jpg",
        ),
      ],
    ),
  );
}
// "images/n.jpg",
//   "images/n.png",
//   "images/d.jpg",
//   "images/m.jpg",
//   "images/g.jpg",

moviecard({required String imgUrl}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
    child: Column(
      children: [
        Container(
          height: 180,
          width: 115,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(imgUrl))),
        ),
        Flexible(child: homeTitles(textTile: "The Iron Man"))
      ],
    ),
  );
}
