import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(//裁切路径
            clipper: BottomClipper(),//决定裁切谁
            child: Container(
              color:Colors.green,
              height:200.0
            ),
          )
        ],
      ),
    );
  }
}


class BottomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // var path=Path();//需要构造四个点的路径
    // //两个起点
    // path.lineTo(0, 0);
    // path.lineTo(0, size.height-50);

    // //曲线的点
    // var firstControlPoint=Offset(size.width/2, size.height);//曲线起点
    // var firstEndPoint=Offset(size.width, size.height-50);//曲线终点
    // //画曲线
    // path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    // //还有两个点

    // path.lineTo(size.width, size.height-50);//要跟曲线的点连起来
    // path.lineTo(size.width, 0);

    // return path;
    var path=Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-40);
    //第一段曲线
    var firstControlPoint=Offset(size.width/4, size.height);
    var firstEndPoint=Offset(size.width/2, size.height-40);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    //第二段曲线
    var secondControlPoint=Offset((size.width/4)*3, size.height-80);
    var secondEndPoint=Offset(size.width, size.height-40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height-40);
    path.lineTo(size.width, 0);

    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}