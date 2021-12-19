import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/auth/widget/drawer_widget.dart' as drawer;

class ViewProfileAnyUserPage extends StatefulWidget {
  var model;
   final String title;
  ViewProfileAnyUserPage(this.model, {this.title = 'Wedibuddy'});
  
  @override
  _ViewProfileAnyUserPageState createState() => _ViewProfileAnyUserPageState(model);
}

class _ViewProfileAnyUserPageState extends State<ViewProfileAnyUserPage> {
  

  final FocusNode myFocusNode = FocusNode();
  var model;  
  _ViewProfileAnyUserPageState(this.model);

  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: _buildAppBar(),
     body: _buildBody(),
     drawer: drawer.DrawerWidget.buildDrawer(context,"View Profile"),
    );
  }

  _buildAppBar() {
    return AppBar(
          title: Text(widget.title+">View Profile"),
    );
  }


  _buildBody() {
    Widget getRow(String heading,String value){
     return  Padding(
       padding: const EdgeInsets.only(top: 10),
       child: Column(
         children: <Widget>[
           new Row(children: <Widget>[
             new Expanded(child:  new Text(heading,style: new TextStyle(color:Colors.black),),flex: 0,),
             new Expanded(child:  Padding(
               padding: const EdgeInsets.only(left: 20.0),
               child: new Text(value,style: new TextStyle(color:Colors.black),),
             ) ,flex: 1,),
           ],
           ),
           Padding(
             padding: const EdgeInsets.only(top: 8.0),
             child: new Container(height: 1.0,color: Colors.black,),
           ),
         ],
       ),
     );
    }
    

    Widget accountInfo=new Container(child: Padding(
      padding: const EdgeInsets.fromLTRB(15.0,20,15,20),
      child: new Column(children: <Widget>[
        getRow("name", model['user']['firstname']+" "+ model['user']['lastname']),
        getRow("DOB", model['user']['dob'].toString()),
        getRow("Contact", model['user']['contactno'].toString()),
        getRow("Email", model['user']['username']),
        ],
        ),
      )
    );

    Widget personalInfo=new Container(child: Padding(
      padding: const EdgeInsets.fromLTRB(15.0,20,15,20),
      child: new Column(children: <Widget>[
        getRow("Height", model['userProfile']['height']!=null?model['userProfile']['height'].toString():"--"),
        getRow("Weight", model['userProfile']['weight']!=null?model['userProfile']['weight'].toString():"--".toString()),
        getRow("Salary", model['userProfile']['salary']!=null?model['userProfile']['salary'].toString():"--".toString()),
        getRow("RelationShip", model['userProfile']['relationShip']!=null?model['userProfile']['relationShip'].toString():"--".toString()),
        getRow("Current Location:", model['userProfile']['diet']!=null?model['userProfile']['diet'].toString():"--".toString()),
        ],
        ),
      ),
    );

    Widget family=new Container(child: Padding(
      padding: const EdgeInsets.fromLTRB(15.0,20,15,20),
      child: new Column(children: <Widget>[
        getRow("Father", model['family']['fatherfirstname']!=null?model['family']['fatherfirstname']+" "+model['family']['fatherlastname'].toString():"--"),
        getRow("Weight", model['family']['motherfirstname']!=null?model['family']['fatherfirstname']+" "+model['family']['motherlastname'].toString():"--"),
        getRow("Father occupation", model['family']['fatherOccupation']!=null?model['family']['fatherOccupation'].toString():"--"),
        getRow("Mother occupation", model['family']['motherOccupation']!=null?model['family']['motherOccupation'].toString():"--"),
        getRow("Goutra", model['family']['goutra']['name']!=null?model['family']['goutra']['name'].toString():"--"),
        getRow("Deity", model['family']['deity']['name']!=null?model['family']['deity']['name'].toString():"--"),
        getRow("Home telephone", model['family']['homeContactno']!=null?model['family']['homeContactno'].toString():"--"),
        getRow("Home address", model['family']['homeAddress']!=null?model['family']['homeAddress'].toString():"--"),
        ],
        ),
      ),
    );

    Widget education=new Container(child: Padding(
      padding: const EdgeInsets.fromLTRB(15.0,20,15,20),
      child: new Column(children: <Widget>[
        getRow("Course", model['education']['coursename']!=null?model['education']['coursename'].toString():"--"),
        getRow("educationLevel", model['education']['educationLevel']!=null?model['education']['educationLevel'].toString():"--"),
        getRow("Address", getEducationAddress(model).toString()),
        ],
        ),
      ),
    );

    Widget work=new Container(child: Padding(
      padding: const EdgeInsets.fromLTRB(15.0,20,15,20),
      child: new Column(children: <Widget>[
        getRow("Position", model['work']['position']!=null?model['work']['position'].toString():"--"),
        getRow("Organization", model['work']['organization']!=null?model['work']['organization'].toString():"--"),
        getRow("Address", getWorkAddress(model).toString()),
        ],
        ),
      ),
    );

    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab( text: "Account Info"),
                Tab(text: "Personal Info"),
                Tab( text: "Family"),
                Tab(text: "Education"),
                Tab(text: "Work"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              accountInfo,
              personalInfo,
              family,
              education,
              work,
            ],
          ),
        ),
      );
  }

  getEducationAddress(model) {
      var value = model['education']['address'];
      if(value==null){
          value="--";
      }else{
          value = model['education']['address']['name']+" "+model['education']['address']['city']+" "+model['education']['address']['district'];
      }
      return value;
  }

  getWorkAddress(model) {
      var value = model['work']['address'];
      if(value==null){
          value="--";
      }else{
          value = model['work']['address']['name']+" "+model['work']['address']['city']+" "+model['work']['address']['district'];
      }
      return value;
  }
}


//   Widget _getEditIcon() {
//     return GestureDetector(
//       child: CircleAvatar(
//         backgroundColor: Colors.red,
//         radius: 14.0,
//         child: Icon(
//           Icons.edit,
//           color: Colors.white,
//           size: 16.0,
//         ),
//       ),
//       onTap: () {
//         setState(() {
//           _status = false;
//         });
//       },
//     );
//   } 


//   Widget _getActionButtons() {
//     return Padding(
//       padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           Column(
//             children: 
//               [Padding(
//                 padding: EdgeInsets.only(right: 10.0),
//                 child: Container(
//                     child: RaisedButton(
//                   child: Text("Save"),
//                   textColor: Colors.white,
//                   color: Colors.green,
//                   onPressed: () {
//                     setState(() {
//                       _status = true;
//                       FocusScope.of(context).requestFocus(FocusNode());
//                     });
//                   },
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20.0)),
//                 )),
//               ),
//             ],
//           ),
//           Column(
//             children: [Padding(
//               padding: EdgeInsets.only(left: 10.0),
//               child: Container(
//                   child: RaisedButton(
//                 child: Text("Cancel"),
//                 textColor: Colors.white,
//                 color: Colors.red,
//                 onPressed: () {
//                   setState(() {
//                     _status = true;
//                     FocusScope.of(context).requestFocus(FocusNode());
//                   });
//                 },
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20.0)),
//               )),
//             ),
//             ]
//           ),
//         ],
//       ),
//     );
//   }

//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _buildAppBar(),
//       drawer: drawer.DrawerWidget.buildDrawer(context),
//       body: Container(
//       color: Colors.white,
//       child: ListView(
//         children: <Widget>[
//           Column(
//             children: <Widget>[
//               Container(
//                 height: 250.0,
//                 color: Colors.white,
//                 child: Column(
//                   children: <Widget>[
//                     Padding(
//                         padding: EdgeInsets.only(left: 20.0, top: 20.0),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Icon(
//                               Icons.arrow_back_ios,
//                               color: Colors.black,
//                               size: 22.0,
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 25.0),
//                               child: Text('PROFILE',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20.0,
//                                       fontFamily: 'sans-serif-light',
//                                       color: Colors.black)
//                                     ),
//                             )
//                           ],
//                         )
//                         ),
//                         Padding(
//                             padding: EdgeInsets.only(top: 90.0, right: 100.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: <Widget>[
//                                 CircleAvatar(
//                                   backgroundColor: Colors.red,
//                                   radius: 25.0,
//                                   child: Icon(
//                                     Icons.camera_alt,
//                                     color: Colors.white,
//                                   ),
//                                 )
//                               ],
//                             )
//                           ),
//                       ]
//                       ),
//                     ),
//               Container(
//                 color: Color(0xffFFFFFF),
//                 child: Padding(
//                   padding: EdgeInsets.only(bottom: 25.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Padding(
//                           padding: EdgeInsets.only(
//                               left: 25.0, right: 25.0, top: 25.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   Text(
//                                     'Parsonal Information',
//                                     style: TextStyle(
//                                         fontSize: 18.0,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   _status ? _getEditIcon() : Container(),
//                                 ],
//                               )
//                             ],
//                           )),
//                       Padding(
//                           padding: EdgeInsets.only(
//                               left: 25.0, right: 25.0, top: 25.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   Text(
//                                     'Name',
//                                     style: TextStyle(
//                                         fontSize: 16.0,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )),
//                       Padding(
//                           padding: EdgeInsets.only(
//                               left: 25.0, right: 25.0, top: 2.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Flexible(
//                                 child: TextField(
//                                   decoration: const InputDecoration(
//                                     hintText: "Enter Your Name",
//                                   ),
//                                   enabled: !_status,
//                                   autofocus: !_status,

//                                 ),
//                               ),
//                             ],
//                           )),
//                       Padding(
//                           padding: EdgeInsets.only(
//                               left: 25.0, right: 25.0, top: 25.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   Text(
//                                     'Email ID',
//                                     style: TextStyle(
//                                         fontSize: 16.0,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )),
//                       Padding(
//                           padding: EdgeInsets.only(
//                               left: 25.0, right: 25.0, top: 2.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Flexible(
//                                 child: TextField(
//                                   decoration: const InputDecoration(
//                                       hintText: "Enter Email ID"),
//                                   enabled: !_status,
//                                 ),
//                               ),
//                             ],
//                           )),
//                       Padding(
//                           padding: EdgeInsets.only(
//                               left: 25.0, right: 25.0, top: 25.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   Text(
//                                     'Mobile',
//                                     style: TextStyle(
//                                         fontSize: 16.0,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )),
//                       Padding(
//                           padding: EdgeInsets.only(
//                               left: 25.0, right: 25.0, top: 2.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Flexible(
//                                 child: TextField(
//                                   decoration: const InputDecoration(
//                                       hintText: "Enter Mobile Number"),
//                                   enabled: !_status,
//                                 ),
//                               ),
//                             ],
//                           )),
//                       Padding(
//                           padding: EdgeInsets.only(
//                               left: 25.0, right: 25.0, top: 25.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                              Column(
//                                 children: 
//                                   [Container(
//                                     child: Text(
//                                       'Pin Code',
//                                       style: TextStyle(
//                                           fontSize: 16.0,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 children: 
//                                   [Container(
//                                     child: Text(
//                                       'State',
//                                       style: TextStyle(
//                                           fontSize: 16.0,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
                              
//                               ),
//                             ],
//                           )),
//                       Padding(
//                           padding: EdgeInsets.only(
//                               left: 25.0, right: 25.0, top: 2.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               Flexible(
//                                 child: Padding(
//                                   padding: EdgeInsets.only(right: 10.0),
//                                   child: TextField(
//                                     decoration: const InputDecoration(
//                                         hintText: "Enter Pin Code"),
//                                     enabled: !_status,
//                                   ),
//                                 ),
//                                 flex: 2,
//                               ),
//                               Flexible(
//                                 child: TextField(
//                                   decoration: const InputDecoration(
//                                       hintText: "Enter State"),
//                                   enabled: !_status,
//                                 ),
//                                 flex: 2,
//                               ),
//                             ],
//                           )),
//                       !_status ? _getActionButtons() : Container(),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     )
//   );
//   }

//   @override
//     void dispose() {
//       // Clean up the controller when the Widget is disposed
//       myFocusNode.dispose();
//       super.dispose();
//     }
  
// }
