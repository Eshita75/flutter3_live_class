
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Home(),
    );
  }

}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home Screen", style: TextStyle(color: Colors.black),),//title area
        leading: Icon(Icons.home_filled, color: Colors.black,),//leading area
        actions: [//acttion area
          IconButton(onPressed: (){
            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Money has been transferred'),
            //   backgroundColor: Colors.green,duration: Duration(seconds: 3),));//ScaffoldMessenger class
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text('Send money'),
                content: Text('Are you sure'),
              );
            });
          }, icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Eshita'),
          Text("Mondol"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('Greeting from '),
              Text('Ovi'),
              Column(
                children: [
                  Text("Date"),
                  Text('03/22/2024')
                ],
              )
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('Greeting from '),
              Text('Ovi'),
              Column(
                children: [
                  Text("Date"),
                  Text('03/22/2024')
                ],
              )
            ],
          )
        ],
      ),
    );
  }

}