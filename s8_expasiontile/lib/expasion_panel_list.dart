import 'package:flutter/material.dart';

class ExpasionPanelListDemo extends StatefulWidget {
  ExpasionPanelListDemo({Key? key}) : super(key: key);

  @override
  _ExpasionPanelListDemoState createState() => _ExpasionPanelListDemoState();
}

class _ExpasionPanelListDemoState extends State<ExpasionPanelListDemo> {
  List<int> mList=[];
  List<ExpandStateBean> expandStateList=[];
  _ExpasionPanelListDemoState(){  
    for(int i=0;i<10;i++){
      mList.add(i);
      expandStateList.add(ExpandStateBean(i,false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Expasion Panel List')),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index,bol){//index索引，bol是否打开
            _SetCurrentIndex(index,bol);
          },
          children:  mList.map((index){//list.map()获取下标
            return ExpansionPanel(
              headerBuilder: (context,isExpanded){
                return ListTile(
                  title: Text('this is no. $index'),
                );
              },
              body: ListTile(
                title: Text('expasion no. $index'),
              ),
              isExpanded: expandStateList[index].isOpen
            );
          }).toList(),
        ),
      ),
    );
  }
  _SetCurrentIndex(int index,isExpand){
    setState((){
      expandStateList.forEach((element) {//遍历
        if(element.index==index){//如果传递过来的index和本身的index相等，则遍历正确
          element.isOpen=!isExpand;//取反
        }
      });
    });
  }
}


class ExpandStateBean{
  var isOpen;
  var index;
  ExpandStateBean(this.index,this.isOpen);
}