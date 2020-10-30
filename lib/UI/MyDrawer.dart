import 'dart:ui';

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Image.asset('images/logo_c.png'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Agadir Tour',
                    style: TextStyle(fontSize: 17.0, color: Colors.white),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.green,
              size: 30.0,
            ),
            title: Text('Home'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.location_on,
              color: Colors.green,
              size: 30.0,
            ),
            title: Text('Loactions'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.green,
              size: 30.0,
            ),
            title: Text('About us'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.green,
              size: 30.0,
            ),
            title: Text('Logout'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.directions_walk,
              color: Colors.green,
              size: 30.0,
            ),
            title: Text('Exit'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
