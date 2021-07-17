import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  final Offset? offset;
  final Color? widgetColor;
  const DraggableWidget({ Key? key ,this.offset,this.widgetColor}) : super(key: key);

  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset=Offset(0.0,0.0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    offset=widget.offset!;
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      right: offset.dy,
      child: Draggable(//子控件
        data: widget.widgetColor,//要传递参数，在DragTarget里会接受这个参数，但要在拖拽控件拖拽到DragTarget的时候
        child: Container(
          width:100.0,
          height:100.0,
          color:widget.widgetColor,//传递过来的颜色
        ),
        feedback: Container(//拖动时跟随移动的组件
          width:100.0,
          height:100.0,
          color:widget.widgetColor!.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity,Offset offset){//松开时的相应事件，也就是不拖拽时，常用来改变推拽时到达的位置
          setState(() {
            this.offset=offset;//拖动结束后，拖拽到哪儿就显示到哪儿
          });
        },
      ),
    );
  }
}