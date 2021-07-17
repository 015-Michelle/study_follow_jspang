import 'package:flutter/material.dart';
import 'draggable_widget.dart';

class DraggableDemo extends StatefulWidget {
  DraggableDemo({Key? key}) : super(key: key);

  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _darggableColor=Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         children: [
           DraggableWidget(
             offset: Offset(80.0,80.0),
             widgetColor: Colors.green,
           ),
           DraggableWidget(
             offset:Offset(180.0,80.0),
             widgetColor:Colors.blue,
           ),
           Center(
              child: DragTarget(//接受拖拽事件的控件
                onAccept: (Color color){//当拖拽到控件里时触发，然后用生成器改变组件状态
                  _darggableColor=color;
                },
                builder: (context,candidateData,rejectedData){//构造器，进行child值修改
                  return Container(
                    width: 200.0,
                    height: 200.0,
                    color: _darggableColor,
                  );
                },
              ),
           )
         ],
       ),
    );
  }
}