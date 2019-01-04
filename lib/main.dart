import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.teal,
  ),
  home: new HomePage(),
));
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }
  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Utils App"),
      ),
//      body: new MyBody()
        body:new TabBarView(
            children: <Widget>[
              new NewPage("Trending"),new NewPage("Recent"),new NewPage("Sports")],
              controller: tabController,
        ),
      bottomNavigationBar: new Material(
        color: Colors.teal,
        child: new TabBar(
            controller: tabController,
            tabs:<Widget>[
              new Tab(
                icon: new Icon(Icons.favorite),
              ),
              new Tab(
                icon: new Icon(Icons.album),
              ),
              new Tab(
                icon: new Icon(Icons.assessment),
              )
            ] ),
      ),
    );
  }
}


class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}











//class MyBody extends StatelessWidget {
//  AlertDialog dialog = new AlertDialog(
//    content: new Text("Dialog working", style: new TextStyle(fontSize: 25.0),
//    ),
//    title: new Text("What's New"),
//  );
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      child: new Center(
//        child: new RaisedButton(
//          child: new Text("Click Me"),
//          color: Colors.amber,
//
//// *********Implementing Snackbar in flutter ***********************8
////          onPressed: ()=> Scaffold.of(context).showSnackBar(
////              new SnackBar(content: new Text("You clicked me"),
////              )
////          ),
//            onPressed: ()=>showDialog(context: context, child: dialog),
//
//        ),
//      ),
//    );
//  }
//}


// *********  Making list of steps
//int currentStep = 0;
//List<Step> my_steps = [
//  new Step(
//      title: new Text("Step 1"),
//      content: new Text("Start learning flutter"),
//      isActive: true
//  ),
//  new Step(
//      title: new Text("Step 2"),
//      content: new Text("Have to start with redux too"),
//      isActive: true
//  ),
//  new Step(
//      title: new Text("Step 3"),
//      content: new Text("Forgetting Django "),
//      isActive: true
//  )
//];

// ********Implementing Stepper


//new Container(
//child: new Stepper(
//steps: my_steps,
//currentStep: this.currentStep,
//type: StepperType.vertical,
//),
//)
