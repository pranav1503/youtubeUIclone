import 'package:flutter/material.dart';

class libraryClass extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {

    var inb = Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
              libraryContent("Histroy",Icon(Icons.history)),
              libraryContent("Downloads",Icon(Icons.file_download)),
              libraryContent("My Videos",Icon(Icons.ondemand_video)),
//            libraryContent("Downloads",Icon(Icons.)),

          ],
        )
    );
    return inb;
  }
}


class libraryContent extends StatelessWidget{
  Icon icon;
  String button_text;

  libraryContent(String button_text, Icon iconin){
    this.button_text = button_text;
    this.icon = iconin;
  }
  @override
  Widget build(BuildContext context) {

    var inb = RaisedButton(
      child: Row(
        children: <Widget>[
          icon,
          Text("     "),
          Text(button_text,)
        ],
      ),
      onPressed: (){
        print("Hello");
      },
      color: Color(0x00000000),
      textColor: Colors.black,
//              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      splashColor: Colors.grey[200],
      elevation: 0,
    );
    return inb;
  }
}