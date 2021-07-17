import 'package:flutter/material.dart';

class CustomeRoute extends PageRouteBuilder{
  final Widget widget;
  CustomeRoute(this.widget)
    :super(
      transitionDuration: Duration(seconds:1),//设置过渡时间
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => widget,
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child){
        
        //1.--渐隐渐显的路由动画效果
        // return FadeTransition(
        //   opacity: Tween(
        //     begin: 0.0,end:1.0,
        //   ).animate(CurvedAnimation(
        //     parent:animation,//父级动画
        //     curve:Curves.fastOutSlowIn,//动画曲线，这个是快出慢进
        //   )),
        //   child: child,
        // );

        //2.--缩放的动画效果
        // return ScaleTransition(
        //   scale: Tween(begin:0.0,end:1.0).animate(
        //     CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn)
        //   ),
        //   child: child,
        // );

        //3.--旋转+缩放效果
        // return RotationTransition(
        //   turns: Tween(
        //     begin: 0.0,end:1.0
        //   ).animate(CurvedAnimation(
        //     parent: animation, 
        //     curve: Curves.fastOutSlowIn
        //   )),
        //   child: ScaleTransition(
        //     scale: Tween(
        //         begin:0.0,end:1.0
        //       ).animate(CurvedAnimation(
        //         parent:animation,
        //         curve:Curves.fastOutSlowIn
        //       )
        //     ),
        //     child:child,
        //   ),
        // );

        //4.--左右滑动
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(-1.0,0.0),
            end: Offset(0.0,0.0)
          ).animate(CurvedAnimation(
            parent:animation,
            curve:Curves.linear
          )),
          child: child,
        );
      }
    );
}