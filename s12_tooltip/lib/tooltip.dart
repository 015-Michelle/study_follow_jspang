import 'package:flutter/material.dart';

class TooltipDemo extends StatelessWidget {
  const TooltipDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tooltip')),
      body: Center(
        child: Tooltip(
          message: '哎呀，被点了一下',
          child: Image.network('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3355464299,584008140&fm=26&gp=0.jpg'),
        ),
      ),
    );
  }
}