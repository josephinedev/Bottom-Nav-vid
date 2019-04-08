import 'package:flutter/material.dart';
import 'package:bottom_nav_vid/Home.dart';
import 'package:bottom_nav_vid/Work.dart';
import 'package:bottom_nav_vid/Landscape.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{

  int _selectedPage =0;
  final _pageOptions = [
//    Text('Home',style: TextStyle(fontSize: 36.0)),
//    Text('Work',style: TextStyle(fontSize: 36.0)),
//    Text('Landscape',style: TextStyle(fontSize: 36.0)),
    HomePage(),
    WorkPage(),
    LandscapePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text('Bottom Nav Bar Video', textAlign: TextAlign.center),
        ),
        body:_pageOptions[_selectedPage] ,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index){
           setState(() {
             _selectedPage = index;
           });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: Text('Work'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.landscape),
              title: Text('LandScape'),
            ),
          ],
        ),
      ) ,
    );
  }
}

