import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RightBackDemo extends StatelessWidget {
  const RightBackDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(//里面没有body，直接使用child
      child: Center(
        child:Container(
          height: 100.0,
          width: 100.0,
          color: CupertinoColors.activeBlue,
          child:CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: (){
              Navigator.of(context).push(
                CupertinoPageRoute(builder:(context)=>RightBackDemo())
              );
            },
          ),
        )
      ),
    );
  }
}