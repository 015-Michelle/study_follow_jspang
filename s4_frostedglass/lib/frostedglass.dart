import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlass extends StatelessWidget {
  const FrostedGlass({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ConstrainedBox(//约束盒子组件，添加额外的约束条件在child上
            constraints: const BoxConstraints.expand(),
            child: Image.network('https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F748%2FceZOdKgDAFsq2.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625817498&t=bbeb6ba7f6f41f4462d59e60bf7108d7'),
            
          ),
          Center(
            child: ClipRRect(//可裁切的矩形
              child: BackdropFilter(//背景过滤器
                filter: ImageFilter.blur(sigmaX: 0.5,sigmaY:0.5),
                child: Opacity(//透明度
                  opacity: 0.5,
                  child: Container(
                    width:500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200),//盒子修饰器
                    child: Center(
                      child:Text('毛玻璃特效',style: Theme.of(context).textTheme.display3,)
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}