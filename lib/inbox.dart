import 'package:flutter/material.dart';

class inboxClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var inb = Container(
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: <Widget>[
            inboxContent("user1.png","The Secrets for success by Arnold Schwarzenegger","6 hours ago","img1.jpg",1),
            inboxContent("user2.jpg","The Man Who Thought Different - Steve Jobs Apple Co-Founder","12 hours ago","img2.jpg",1),
            inboxContent("user2.jpg","Everything you need to know about Avengers - Avengers Club","3 days ago","img3.jpeg",0),
            inboxContent("user.jpg","The Man Who Thought Different - Steve Jobs Apple Co-Founder","1 month ago","img4.jpg",0),
            inboxContent("user3.jpg","The tour to the iimb campus - Bengaluru, Karnataka, India","2 hours ago","img5.jpg",1),

          inboxContent("user1.png","The Secrets for success by Arnold Schwarzenegger","6 hours ago","img1.jpg",0),
          inboxContent("user2.jpg","The Man Who Thought Different - Steve Jobs Apple Co-Founder","12 hours ago","img2.jpg",0),
          inboxContent("user2.jpg","Everything you need to know about Avengers - Avengers Club","3 days ago","img3.jpeg",1),
          inboxContent("user.jpg","The Man Who Thought Different - Steve Jobs Apple Co-Founder","1 month ago","img4.jpg",1),
          inboxContent("user3.jpg","The tour to the iimb campus - Bengaluru, Karnataka, India","2 hours ago","img5.jpg",1),


        ],
      )
    );
    return inb;
  }
}

class inboxContent extends StatelessWidget{
  String user_img,main_text,time_text,video_img;
  int notSeen = 0;
  inboxContent(String user_img,String main_text,String time_text,String video_img,int not_seen){
    this.user_img = "assets/" + user_img;
    this.main_text = main_text;
    this.time_text = time_text;
    this.video_img = "assets/" + video_img;
    this.notSeen = not_seen;
  }
  @override
  Widget build(BuildContext context) {
    var notSeenContent;

    if(notSeen == 0){
      notSeenContent = Container(
        width:  MediaQuery.of(context).size.width*.02,
      );
    }else{
      notSeenContent = Container(
        width:  MediaQuery.of(context).size.width*.02,
        padding: EdgeInsets.only(left: 4),
        margin: EdgeInsets.only(top: 20,),
        child: Text("\u2022",style: TextStyle(color: Colors.blue[800],fontSize: 20),),
      );
    }

    var inb = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        notSeenContent,
        Container(
          padding: EdgeInsets.only(left: 8,right: 8,top: 15,bottom: 69),
          width:  MediaQuery.of(context).size.width*.15,
          height: 130,
          child: Container(
              width: 30,
              height: 30,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(user_img),
                  )
              )
          ),
        ),
        Container(
          padding: EdgeInsets.only(left:20,top: 15),
          width:  MediaQuery.of(context).size.width*.50,
          height: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(main_text),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(time_text,style: TextStyle(color: Colors.grey,),textAlign: TextAlign.left,),
              ),
            ],
          ),
        ),
        Container(
          width:  MediaQuery.of(context).size.width*.25,
          height: 50,
            margin: EdgeInsets.only(top: 15),
            decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(video_img),
                )
            )
        ),
        Container(
            width:  MediaQuery.of(context).size.width*.05,
            height: 50,
            margin: EdgeInsets.only(top: 15,left: 10),
            child: Text("\u22ee",style: TextStyle(color: Colors.grey[800],fontSize: 15),),
        ),
      ],
    );
    return inb;
  }
}

