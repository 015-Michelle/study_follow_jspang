import 'package:flutter/material.dart';
import 'package:s3_niceroutinghop/customeroute.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Icon(Icons.home),elevation: 0.0,),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_next,color: Colors.white,size: 64.0,),
          onPressed: (){
            Navigator.push(context, CustomeRoute(SecondPage()));
          },
        ),
      ),

    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Icon(Icons.people),elevation: 0.0,),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_before,color:Colors.green,size:64.0),
          onPressed: (){
            Navigator.pop(context);
          }
        )
      ),
    );
  }
}