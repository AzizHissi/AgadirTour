import 'package:flutter/material.dart';
import "package:agadirtour/UI/MyDrawer.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agadir Tour"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.brightness_medium,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                setState(() {});
              }),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
