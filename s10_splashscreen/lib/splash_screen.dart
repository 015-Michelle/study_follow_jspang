import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashScreenDemo extends StatefulWidget {
  const SplashScreenDemo({ Key? key }) : super(key: key);

  @override
  _SplashScreenDemoState createState() => _SplashScreenDemoState();
}

class _SplashScreenDemoState extends State<SplashScreenDemo> with SingleTickerProviderStateMixin{
  late AnimationController _controller;//控制动画播放状态的控制器
  late Animation<double> _animation;//知道一个动画当前的状态，但是不知道绘制的是什么

  @override
  void initState() {
    super.initState();
    //vsync垂直动态演示,duration动画持续的时间
    _controller=AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
    _animation=Tween(begin:0.0,end:1.0).animate(_controller);
    //监听事件，监听动画状态
    _animation.addStatusListener((status) {
      if(status==AnimationStatus.completed){//如果动画结束了
        Navigator.of(context).pushAndRemoveUntil(//跳转到下一页并且动画结束掉
          MaterialPageRoute(builder: (context)=>HomePage()), (route) => route==null);
      }
    });

    _controller.forward();//播放动画
    
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();//销毁动画
  }
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1361135963,570304265&fm=26&gp=0.jpg',
        scale: 2.0,
        fit: BoxFit.cover,//充满外部容器
      ),
      
    );
  }
}