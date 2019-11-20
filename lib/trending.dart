import 'package:flutter/material.dart';
import 'home.dart';

Widget getTrendingView(BuildContext context){
  var finalHomeView = SingleChildScrollView(
    child: Column(
      children: <Widget>[
        eachVideo(context,"assets/img4.jpg","assets/user3.jpg","The Man Who Thought Different - Steve Jobs Apple Co-Founder","DP Techs \u2022 960K views \u2022 3 weeks ago","01:10:12"),
        eachVideo(context,"assets/img1.jpg","assets/user1.png","The Secrets for success by Arnold Schwarzenegger","Beer Biceps \u2022 1M views \u2022 3 weeks ago","22:15"),
        eachVideo(context,"assets/img3.jpeg","assets/user2.jpg","Everything you need to know about Avengers","Avenger Fans Club \u2022 20M views \u2022 1 month ago","10:23"),
      ],
    ),
  );
  return finalHomeView;
}