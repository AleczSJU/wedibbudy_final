
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/auth/singletons/appdata.dart';
import 'package:flutter_application_1/auth/viewprofile_anyuser.dart';
import 'package:flutter_application_1/auth/widget/drawer_widget.dart';
import 'package:flutter_application_1/auth/widget/enddrawer_widget.dart';
import 'package:flutter_application_1/auth/filter_page.dart';
import 'package:flutter_application_1/auth/widget/drawer_widget.dart' as drawer;
import 'package:flutter_application_1/common/common_method.dart';
import 'package:flutter_application_1/common/constant.dart';
import 'package:intl/intl.dart';

class GirlsBoysPage extends StatefulWidget {
  final String title;
  const GirlsBoysPage({this.title = 'Wedibuddy'});

  @override
  _GirlsBoysPageState createState() => _GirlsBoysPageState();
}

class _GirlsBoysPageState extends State<GirlsBoysPage> {

  late String userInContext = AppData().getUserContext();
  late var model;
  @override
  void initState() {
    super.initState();
    model= json.decode(Constant.GirlsJson);
    setState(() {

    });
    print('shubh+++'+model.length.toString());
    // print('userInContext ${userInContext} ');
  }



  EndDrawer endDrawer = EndDrawer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      //drawer: drawer.buildFilterDrawer(context));
      drawer: DrawerWidget.buildDrawer(context,"Girls/Boys"),
      endDrawer: endDrawer.buildDrawer(context), //FilterPage
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text(widget.title+">Girls/Boys"),
    );
  }

  Scaffold _buildBody() {

    TextStyle titleStyle= TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0);
    TextStyle subTextStyle= TextStyle(color: Color(0xff404040),fontWeight: FontWeight.bold,fontSize: 14.0);
    CommonMethod commonMethod = CommonMethod();
    

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: ListView(
          children: <Widget>[

            model!=null?  new Column(
              children: <Widget>[
                new Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: new List.generate(model.length,
                            (int index) {
                          if (model.length - 1 == index) {

                          }
                          return     Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 200.0,
                                  child: Stack(
                                    children: <Widget>[
                                      new Image.asset(
                                        commonMethod.getDbPath(model, index),
//                                        'https://www.gstatic.com/webp/gallery/1.jpg',
                                        height: 200.0,fit: BoxFit.fitWidth,
                                        width: double.infinity,
                                      ),
                                      new Positioned(bottom: 0.0,left: 0.0,right: 0.0,
                                          child: new Container(
                                            height: 30.0,
                                            color: Colors.black.withOpacity(.6),child: new Row(
                                            children: <Widget>[
                                              Expanded(child: Row(children: <Widget>[
                                                Padding(
                                                    padding: const EdgeInsets.only(left: 5.0),
                                                    child:Icon(Icons.thumb_up,color: Colors.blueGrey,)),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 5.0,right: 15.0),
                                                  child: new Text("Like",style: TextStyle(color: Colors.blueGrey,),),
                                                )
                                              ],),flex: 0,),
                                              Expanded(child: Row(children: <Widget>[
                                                Icon(Icons.info,color: Colors.blueGrey,),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 5.0,right: 15.0),
                                                  child: InkWell(onTap: () {
                                                      Navigator.pushReplacement(context,MaterialPageRoute<void>(builder: (BuildContext context) => 
                                                      ViewProfileAnyUserPage(model[index])));
                                                  },
                                                  child:new Text("View Profile",style: TextStyle(color: Colors.blueGrey)),
                                                  ),
                                                  
                                                )
                                              ],),flex: 0,),
                                              Expanded(child: Row(children: <Widget>[
                                                Icon(Icons.cloud_download,color: Colors.blueGrey,),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 5.0,right: 15.0),
                                                  child: new Text("Add To Wish",style: TextStyle(color: Colors.blueGrey,),),

                                                )
                                              ],),flex: 0,),

                                            ],
                                          ),
                                          ))
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text(model[index]['user']['firstname']+" " +model[index]['user']['lastname'],style: titleStyle,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Father: "+model[index]['family']['fatherfirstname']+" " +model[index]['family']['fatherlastname'],style: subTextStyle,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Mother:"+model[index]['family']['motherfirstname']+" " +model[index]['family']['motherlastname'],style: subTextStyle,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Goutra:"+model[index]['family']['goutra']['name'],style: subTextStyle,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Deity:"+model[index]['family']['deity']['name'],style: subTextStyle,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Age:"+commonMethod.getAge(model,index),style: subTextStyle,),                                        
                                      ),
                                       Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Dob:"+commonMethod.getDob(model,index),style: subTextStyle,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Height: "+commonMethod.getHeight(model,index)+" Weight: "+commonMethod.getWeight(model,index),style: subTextStyle,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Education:"+commonMethod.getEducation(model,index),style: subTextStyle,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Work:"+commonMethod.getWork(model,index),style: subTextStyle,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Home contact no: "+commonMethod.getHomeContactNo(model,index),style: subTextStyle,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: new Text("Home Address: "+commonMethod.getHomeAddress(model,index),style: subTextStyle,),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: new Container(height: 1.0,color: Colors.grey,),
                                )
                              ],
                            ),
                          );
                        }))
              ],
            ):new Container()


          ],
        ),
      ),
    );
  }



}
