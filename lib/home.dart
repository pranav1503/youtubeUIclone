import 'package:flutter/material.dart';



Widget getHomeView(BuildContext context){
  var finalHomeView = SingleChildScrollView(
    child: Column(
      children: <Widget>[
        eachVideo(context,"assets/img1.jpg","assets/user1.png","The Secrets for success by Arnold Schwarzenegger","Beer Biceps \u2022 1M views \u2022 3 weeks ago","22:15"),
        eachVideo(context,"assets/img3.jpeg","assets/user2.jpg","Everything you need to know about Avengers","Avenger Fans Club \u2022 20M views \u2022 1 month ago","10:23"),
        eachVideo(context,"assets/img4.jpg","assets/user3.jpg","The Man Who Thought Different - Steve Jobs Apple Co-Founder","DP Techs \u2022 960K views \u2022 3 weeks ago","01:10:12"),
      ],
    ),
  );
  return finalHomeView;
}

Widget eachVideo(BuildContext context,String mainImg,String userImg,String mainText,String subText,String timing){
  timing = " " + timing + " ";
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: new BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(mainImg),
                  )
              )
          ),

          Container(
            padding: EdgeInsets.all(3),
            child: Text(timing,style: TextStyle(color: Colors.white,backgroundColor: Color.fromRGBO(0, 0, 0, 1),),),
            margin: EdgeInsets.only(top: 195),
            
            alignment: Alignment.centerRight,
          )
        ],
      ),
      Row(
        children: <Widget>[
          Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(left: 10),
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(userImg),
                  )
              )
          ),
          Container(
            width: (MediaQuery.of(context).size.width)*0.85,
            height: 100,
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 40,
                  child: Text(mainText,style: TextStyle(fontWeight: FontWeight.bold),),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  height: 20,
                  child: Text(subText,style: TextStyle(color: Colors.grey,fontSize: 12)),
                  alignment: Alignment.centerLeft,
                )
              ],
            ),
          )
        ],
      )
    ],
  );
}