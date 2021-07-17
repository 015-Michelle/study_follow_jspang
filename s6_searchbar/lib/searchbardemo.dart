import 'package:flutter/material.dart';
import 'asset.dart';

//搜索demo
class SearchBarDemo extends StatefulWidget {
  const SearchBarDemo({ Key? key }) : super(key: key);

  @override
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SearchBar Demo'),
      actions:[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){
            showSearch(context: context, delegate: SearchBarDelegate());
          }, 
        ),
      ]),
    );
  }
}


class SearchBarDelegate extends SearchDelegate{
  //搜索条右侧按钮，放入一个clear图标，点击图片时，清空搜索的内容
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      //query置为 ' '
      IconButton(onPressed: ()=>query='', icon: Icon(Icons.clear)),
    ];
  }
  //搜索栏左侧图标和功能，关闭整个搜索页面
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: ()=>close(context,null), icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,progress: transitionAnimation),
    );
  }
  //搜索到内容了
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.blue,
        child: Center(
          child: Text(query),//直接将query放在Text中
        ),
      ),
    );
  }
  //输入时的推荐及搜索结果
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList=query.isEmpty?recentSuggest:searchList.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context,index)=>ListTile(
        //创建一个富文本显示
        title:RichText(
          text:TextSpan(
            text: suggestionList[index].substring(0,query.length),
            style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold
            ),
          children: [
            TextSpan(
              text: suggestionList[index].substring(query.length),
              style: TextStyle(color:Colors.grey)
            )
          ],)
        )
      )
    );
  }
} 