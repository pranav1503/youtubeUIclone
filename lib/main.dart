import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'myappbar.dart';
import 'home.dart';
import 'trending.dart';
import 'subscription.dart';
import 'inbox.dart';
import 'library.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Youtube Clone",

        debugShowCheckedModeBanner: false,
        home: Home()
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  int _selectedIndex = 0;
  Icon videoCam = new Icon(Icons.videocam,color: Colors.grey[700],);
  Icon searchIcon = new Icon(Icons.search,color: Colors.grey[700],);
  Widget abcd;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    var layouts =[getHomeView(context), getTrendingView(context),getSubscriptionView(context),inboxClass(),libraryClass()];
    abcd = layouts[_selectedIndex];
    return Scaffold(
      appBar: BaseAppBar(
        appBar: AppBar(),
      ),
      body: abcd,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index){
         setState(() {
           _selectedIndex = index;
         });
        },
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home",style: TextStyle(fontSize: 10),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            title: Text("Trending",style: TextStyle(fontSize: 10),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              title: Text("Subscriptions",style: TextStyle(fontSize: 10),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text("Inbox",style: TextStyle(fontSize: 10),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              title: Text("Library",style: TextStyle(fontSize: 10),)
          ),

        ],
      ),
    );
  }
}

