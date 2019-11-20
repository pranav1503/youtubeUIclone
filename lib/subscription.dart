import 'package:flutter/material.dart';
import 'home.dart';


Widget getSubscriptionView(BuildContext context) {
  double photoHeight = 70;
  double photoWidth = 70;
  double scrollWidthPercent = 0.85;
  var contextWidth = MediaQuery.of(context).size.width;
  var finalHomeView = SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10.0, top: 15, bottom: 10),
              width: contextWidth * scrollWidthPercent,
              height: photoHeight,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  getUserSubs(photoHeight, photoWidth, "user5.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user4.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user3.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user2.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user1.png", 1),
                  getUserSubs(photoHeight, photoWidth, "user.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user5.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user4.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user3.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user2.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user1.png", 0),
                  getUserSubs(photoHeight, photoWidth, "user.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user5.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user4.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user3.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user2.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user1.png", 1),
                  getUserSubs(photoHeight, photoWidth, "user.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user5.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user4.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user3.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user2.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user1.png", 0),
                  getUserSubs(photoHeight, photoWidth, "user.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user5.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user4.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user3.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user2.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user1.png", 1),
                  getUserSubs(photoHeight, photoWidth, "user.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user5.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user4.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user3.jpg", 0),
                  getUserSubs(photoHeight, photoWidth, "user2.jpg", 1),
                  getUserSubs(photoHeight, photoWidth, "user1.png", 0),
                  getUserSubs(photoHeight, photoWidth, "user.jpg", 1),
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                height: photoHeight,
                width: contextWidth * 0.1,
                child: Container(
                  child: Text(
                    "ALL",
                    style: TextStyle(
                        color: Colors.blue[700], fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ),
              onTap: () {
                print("All");
              },
            ),
          ],
        ),
//        Divider(
//          color: Colors.grey[500],
//        ),
        eachVideo(
            context,
            "assets/img5.jpg",
            "assets/user3.jpg",
            "The tour to the iimb campus - Bengaluru, Karnataka, India",
            "DP Techs \u2022 960K views \u2022 3 weeks ago",
            "01:10:12"),
        eachVideo(
            context,
            "assets/img6.jpg",
            "assets/user.jpg",
            "The bests of the Mentalist Series - Mentalist Fans Assc.",
            "Series Man \u2022 1M views \u2022 3 weeks ago",
            "22:15"),
        eachVideo(
            context,
            "assets/img3.jpeg",
            "assets/user2.jpg",
            "Everything you need to know about Avengers",
            "Avenger Fans Club \u2022 20M views \u2022 1 month ago",
            "10:23"),
      ],
    ),
  );
  return finalHomeView;
}

Widget getUserSubs(photoHeight, photoWidth, String userImg, int notSeen) {
  userImg = "assets/" + userImg;
  print(photoWidth);

  var notSeenWidget;
  if (notSeen == 1) {
    notSeenWidget = Positioned(
      left: photoWidth - 20,
      top: photoHeight - 20,
      child: Container(
          height: 15,
          width: 15,
          padding: EdgeInsets.all(3),
          child: Container(
            width: 7,
            height: 7,
            decoration: new BoxDecoration(
              color: Colors.blue[700],
              shape: BoxShape.circle,
            ),
          ),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          )),
    );
  } else {
    notSeenWidget = Container();
  }

  var content = Stack(
    children: <Widget>[
      Container(
        width: photoHeight,
        height: photoWidth,
        padding: EdgeInsets.all(5),
        child: Container(
            alignment: Alignment.centerLeft,
            width: 10,
            height: 10,
            decoration: new BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(userImg),
                ))),
      ),
      notSeenWidget,
    ],
  );
  return content;
}
