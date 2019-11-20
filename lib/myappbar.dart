import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
//  final Color backgroundColor = Colors.red;
//  final Text title;
  final AppBar appBar;
//  final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key key, this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Icon videoCam = new Icon(Icons.videocam,color: Colors.grey[700],);
    Icon searchIcon = new Icon(Icons.search,color: Colors.grey[700],);
    return AppBar(
      backgroundColor: Colors.white,
      title: Image.asset("assets/logo.png",height: 25,),
      actions: <Widget>[
        new IconButton(
            icon: videoCam,
            tooltip: 'Video',
            onPressed: (){
              print("Video");
            }
        ),
        new IconButton(icon: searchIcon, onPressed: null),
        new IconButton(
            icon: Container(
                width: 30,
                height: 30,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/user.jpg"),
                    )
                )
            ),
            onPressed: null)
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}

