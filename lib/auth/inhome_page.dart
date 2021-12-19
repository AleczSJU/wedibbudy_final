import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/auth/widget/drawer_widget.dart';

class InHomePage extends StatefulWidget {
  final String title;
  const InHomePage({this.title = 'Wedibuddy'});

  @override
  _InHomePageState createState() => _InHomePageState();
}

class _InHomePageState extends State<InHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text(widget.title),
        ),
       body: buildBody(),
      drawer: DrawerWidget.buildDrawer(context,"Home"));
    }
  }

  Scaffold buildBody() {
    return Scaffold(
    backgroundColor: Colors.white,
    body: Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      child: ListView(
        children: <Widget>[
          Container(
            height: 500.0,
            child: Stack(
              children: <Widget>[
                new Image.asset(
                  'assets/img/1.jpg',
                  height: 200.0,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
                Center(
                  child: new Container(
                      margin: const EdgeInsets.all(30.0),
                      child: new Text("welcome to wedibuddy",
                          style: TextStyle(
                            backgroundColor: Colors.yellow,
                              color: Colors.red, fontSize: 20.0
                          ),
                        ),
                    ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );


  }


 

  // Container _buildBody() {
  //   return new Container(
  //     decoration: new BoxDecoration(
  //       image: new DecorationImage(
  //         image: new AssetImage("assets/img/1.jpg"),
  //         fit: BoxFit.fill,
  //       ),
  //     ),
  //     child: new Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           new Container(
  //               margin: const EdgeInsets.all(30.0),
  //               child: new Text("welcome to wedibuddy",
  //                   style: TextStyle(color: Colors.black, fontSize: 20.0))),
  //         ]),
  //   );
  // }
//}
