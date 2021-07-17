import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  const BottomAppBarDemo({ Key? key }) : super(key: key);

  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  var _eachView=<Widget>[];
  int _index=0;
  @override
  void initState() {
    super.initState();
    _eachView..add(EachView('Home'))..add(EachView('People')); 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      //fAB悬浮按钮
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return EachView('New Page');}));
        },
        tooltip: 'FAB',
        child: Icon(Icons.add,color: Colors.white,),
        elevation: 20.0,
        highlightElevation: 25.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(//BottomNavigationBar是底部导航，BottomAppBar是底部工具栏-更灵活
        color: Colors.green,
        shape: CircularNotchedRectangle(),//在举行路面有个圆形缺口
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){setState(() {
              _index=0;
            });}, icon: Icon(Icons.home),color: Colors.white,),
            IconButton(onPressed: (){setState(() {
              _index=1;
            });}, icon: Icon(Icons.people),color: Colors.white,),
          ],
        ),
        
      ),
    );
  }
}