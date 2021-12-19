import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/girlsboys_page.dart';
import 'package:flutter_application_1/auth/index_page.dart';
import 'package:flutter_application_1/auth/inhome_page.dart';
import 'package:flutter_application_1/auth/profile_page.dart';
import 'package:flutter_application_1/auth/wish_page.dart';
import 'package:flutter_application_1/unauth/forgot_password_page.dart';
import 'package:flutter_application_1/unauth/login_page.dart';
import 'package:flutter_application_1/unauth/register_page.dart';

Drawer buildDrawer(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(Icons.apartment),
                title: const Text(
                  'Login',
                  style: TextStyle(fontSize: 24.0),
                ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  LoginPage(),
                    ),
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment),
                title: const Text(
                  'Registration',
                  style: TextStyle(fontSize: 24.0),
                ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  RegisterPage(),
                    ),
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment),
                title: const Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 24.0),
                ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  ForgotPasswordPage(),
                    ),
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment),
                title: const Text(
                  'Profile',
                  style: TextStyle(fontSize: 24.0),
                ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  ProfilePage(),
                    ),
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.house),
              title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 24.0),
                ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => InHomePage(),
                    ),
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment),
                title: const Text(
                  'Girls/Boys',
                  style: TextStyle(fontSize: 24.0),
                ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  GirlsBoysPage(),
                    ),
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment),
                title: const Text(
                  'Wishes',
                  style: TextStyle(fontSize: 24.0),
                ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  WishPage(),
                    ),
                  );
              },
            ),
            
          ],
        ),
      );
  }