import 'package:flutter/material.dart';
import 'dart:convert';

void main()=> runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.teal,
  ),
  home: new HomePage(),
));

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("LoadJson"),
      ),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
            future: DefaultAssetBundle
            .of(context)
            .loadString("load_json/person.json"),
            builder: (context,snapshot){
              var mydata = jsonDecode(snapshot.data.toString());
              return new ListView.builder(
                  itemBuilder:(BuildContext context, int index){
                    return new Card(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new Text("Name: "+mydata[index]['name']),
                          new Text("Name: "+mydata[index]['age']),
                          new Text("Name: "+mydata[index]['height']),
                          new Text("Name: "+mydata[index]['gender']),
                        ],
                      ),
                    );
              },
              itemCount: mydata == null?0:mydata.length,
              );
            },
          ),
        ),
      ),
    );
  }
}