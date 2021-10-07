import 'package:flutter/material.dart';
import 'package:movie_app_clone/Utils/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgorundColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                child: Row(
                  children: [
                    homeTitles(textTile: "All"),
                    homeTitles(textTile: "Films"),
                    homeTitles(textTile: "Series"),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      currentlyWatching(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            categoryTileHeader(title: "Popular"),
                            homeTitles(textTile: "View all"),
                          ],
                        ),
                      ),
                      Container(
                        height: 220,
                        width: double.infinity,
                        child: popularMovies(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            categoryTileHeader(title: "Soon"),
                            // homeTitles(textTile: "View all"),
                          ],
                        ),
                      ),
                      Container(
                        height: 220,
                        width: double.infinity,
                        child: popularMovies(),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  popularMovies() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: img.length,
        itemBuilder: (context, index) => movieBanner(imgUrl: img[index]));
  }
}

movieBanner({required String imgUrl}) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Column(
      children: [
        Container(
          height: 180,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage(imgUrl))),
          width: 130,
        ),
        Row(
          children: [rating(), homeTitles(textTile: ("(33)"))],
        )
      ],
    ),
  );
}

categoryTileHeader({required String title}) {
  return Text(
    title,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  );
}

currentlyWatching() {
  return Container(
    height: 200,
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titleMoveibanner(),
        SizedBox(
          width: 25,
        ),
        titleMovieDetails()
      ],
    ),
  );
}

titleMovieDetails() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        homeTitles(textTile: "You started watching"),
        categoryTileHeader(title: "Americans"),
        homeTitles(textTile: "Part 4"),
        rating(),
        homeTitles(textTile: "USA|2017|Trailer"),
        homeTitles(textTile: "Watching: 68%"),
        CircleAvatar(
          radius: 20,
          backgroundColor: primaryColor.withOpacity(0.2),
          child: Center(
            child: Icon(
              Icons.play_arrow,
              color: primaryColor,
            ),
          ),
        )
      ],
    ),
  );
}

Text rating() {
  return Text(
    "******",
    style: TextStyle(color: primaryColor, fontSize: 25),
  );
}

titleMoveibanner() {
  return Container(
    height: 190,
    width: 140,
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("images/pm.jpg"))),
  );
}

homeTitles({required String textTile}) {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: Text(
      textTile,
      style: TextStyle(
          decorationThickness: 5,
          decorationColor: primaryColor,
          color: textTile == "Series" ? Colors.white : textColor,
          // fontSize: 18,
          decoration: textTile == "Series"
              ? TextDecoration.underline
              : TextDecoration.none),
    ),
  );
}

List img = [
  "images/run.jpg",
  "images/s.jpg",
  "images/sw.jpg",
  "images/run.jpg",
  "images/n.jpg",
  "images/n.png",
  "images/d.jpg",
  "images/m.jpg",
  "images/g.jpg",
];
