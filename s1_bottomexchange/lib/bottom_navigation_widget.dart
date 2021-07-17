import 'package:flutter/material.dart';
import 'pages/airplay_screen.dart';
import 'pages/email_screen.dart';
import 'pages/home_screen.dart';
import 'pages/pages_screen.dart';

//statefulWidget动态Widget，有两部分，一个继承StatefulWidget，一个继承State（主要代码在这里）
class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({ Key? key }) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor=Colors.blue;

  int _currentIndex=0;//当前索引，用于切换页面
  var list=<Widget>[];//存放四个页面
  @override 
  void initState() {
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,//首页
             //color: _BottomNavigationColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _BottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,//首页
              //color: _BottomNavigationColor,
            ),
            title: Text(
              'email',
              style: TextStyle(color: _BottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,//首页
              //color: _BottomNavigationColor,
            ),
            title: Text(
              'pages',
              style: TextStyle(color: _BottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,//首页
              //color: _BottomNavigationColor,
            ),
            title: Text(
              'airplay',
              style: TextStyle(color: _BottomNavigationColor),
            ),
          ),
        ],
        //底部导航栏自带的位标属性，表示底部导航栏当前处于哪个标签
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex=index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}