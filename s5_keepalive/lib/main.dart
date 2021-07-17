import 'package:flutter/material.dart';
import 'keepalivedemo.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KeepAlive Demo',
      home: KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  KeepAliveDemo({Key? key}) : super(key: key);

  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin{
  late TabController _controller;//用于控制/监听Tab菜单的切换
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=TabController(length:3,vsync:this);//固定这么写的，记住
  }

  @override 
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        bottom: TabBar(//生成Tab菜单
          controller: _controller,
          tabs: [//接受一个widget数组，表示每一个子菜单，可以自定义，也可以直接用Tab
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          //1.--静态的
          // Text('1111'),
          // Text('2222'),
          // Text('3333')
          
          //2.--保持页面状态
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}