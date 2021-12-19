import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/girlsboys_page.dart';
import 'package:flutter_application_1/auth/inhome_page.dart';
import 'package:flutter_application_1/auth/profile_page.dart';
import 'package:flutter_application_1/auth/singletons/appdata.dart';
import 'package:flutter_application_1/auth/wish_page.dart';
import 'package:flutter_application_1/common/constant.dart';
import 'package:flutter_application_1/unauth/login_page.dart';

class DrawerWidget {
  //static String userInContext = AppData().getUserContext();
  var jsonUser;
  DrawerWidget() {
    //jsonUser = json.decode(userInContext);
    // print('jsonUser:: ${jsonUser} ');
  }

  static Drawer buildDrawer(BuildContext context, String title) {
    return Drawer(
      
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.e
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          createDrawerHeader(),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.blue),
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => InHomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.supervised_user_circle, color: Colors.red),
            title: const Text(
              'Girls/Boys',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => GirlsBoysPage()),
              );
            },
          ),

          ListTile(
            leading: const Icon(
              Icons.add_shopping_cart,
              color: Colors.green,
            ),
            title: const Text(
              'Wish cart',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => WishPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.people,
              color: Colors.blue,
            ),
            title: const Text(
              'Personal Profile',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      const ProfilePage(title: 'Wedibuddy'),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  static DrawerHeader createDrawerHeader() {
    
    var jsonUser1 = json.decode(Constant.PROFILEJSON.toString());

    print('jsonUser:: ${jsonUser1} ');
//    print('jsonUser::'+ jsonUser1['userInContextWrapper'] );
    var firstname = jsonUser1['user']['firstname'].toString();
    var lastname = jsonUser1['user']['lastname'].toString();
    var username = jsonUser1['user']['username'].toString();
    var fullname = firstname+' '+lastname;
    //var userProfile = jsonUser1['userProfile'];
    //var dbPath = jsonUser1['dbPath'];
    //print('jsonUser:: ${jsonUser1['userProfile']['dbPath']} ');

    return DrawerHeader(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 300.0,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: new Image.asset(
                        "assets/img/user_avatar.png",
                        height: 70,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(fullname,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    fontFamily: 'sans-serif-light',
                                    color: Colors.green)),
                          ),
                          Center(
                            child: Text("username: "+username,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    fontFamily: 'sans-serif-light',
                                    color: Colors.green)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

    // return const DrawerHeader(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage("images/header.jpeg"),
    //       fit: BoxFit.cover,
    //     ),
    //     color: Colors.blue,
    //   ),
    //   child: Text('Drawer Header'),
    // );
  }
}
