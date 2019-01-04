import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_drawer/new_page.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal
      ),
      home: new HomePage(),
//      routes: <String,WidgetBuilder>{
//        "/a": (BuildContext context) => new NewPage("New Page"),

        );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("harshit"),
                accountEmail: new Text("harshit@gmail.com"),
                currentAccountPicture:new CircleAvatar(
                  backgroundColor: Colors.black38,
                  child: new Text("H"),
                ),
            ),
            new ListTile(
              title: new Text("Page one"),
              trailing: new Icon(Icons.arrow_back),
              onTap: (){

                //Adding navigatio drawer items
                //Routing from navigation drawer to any page
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)
                => new NewPage("Page One")));
                },
            ),


            new ListTile(
              title: new Text("Page Two"),
              trailing: new Icon(Icons.arrow_upward),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
