import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  WrapDemo({Key? key}) : super(key: key);

  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {

  List<Widget> list=[];
  List<Image> imageList=[
    Image.network('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fblog%2F201306%2F25%2F20130625150506_fiJ2r.jpeg&refer=http%3A%2F%2Fcdn.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625908599&t=adf11b38d4d54156a5b8b550084df5c2'),
    Image.network('https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1070003001,653753576&fm=26&gp=0.jpg'),
  ];
  var _index=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list..add(BuildAddButton());
    // imageList.add(value);
  }
  //流式布局到底怎么用
  @override
  Widget build(BuildContext context) {
    //获取屏幕的宽度和高度
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;

    return Scaffold(
       appBar: AppBar(
         title: Text('Wrap流式布局'),
       ),
       body: Opacity(
        opacity: 0.8,
        child: Container(
          width:width,
          height:height/2,
          color:Colors.grey,
          child:Wrap(
            children:list,
            spacing:26.0,
          )
        ), 
       ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget BuildAddButton(){//增加按钮的方法
    return GestureDetector(
      onTap: (){
        if(list.length<9){
          setState(() {
            list.insert(list.length-1, BuildPhoto(_index));
            _index++;
            if(_index==2){
              _index=0;
            }
          });
          
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black,
          child: Icon(Icons.add,color: Colors.white,),
        )
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Widget BuildPhoto(var index){//增加照片的方法
    return Padding(
      padding:const EdgeInsets.all(8.0),
      child: Container(
        width:80.0,
        height:80.0,
        color:Colors.amber,
        child:Center(
          // child: Image.network('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fblog%2F201306%2F25%2F20130625150506_fiJ2r.jpeg&refer=http%3A%2F%2Fcdn.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625908599&t=adf11b38d4d54156a5b8b550084df5c2'),
          child: imageList[index],
        )
      ),
    );
  }

}
