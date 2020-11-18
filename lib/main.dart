
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  SpeedDial buildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 28.0),
      backgroundColor: Colors.blue[500],
      visible: true,
      curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: Icon(Icons.admin_panel_settings, color: Colors.white),
          backgroundColor: Colors.blue,
          onTap: () => print('Pres'),
          label: 'Settings',
          labelStyle:
          TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.account_circle, color: Colors.white),
          backgroundColor: Colors.blue,
          onTap: () => print('Pre'),
          label: 'Add Singer',
          labelStyle:
          TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.create, color: Colors.white),
          backgroundColor: Colors.blue,
          onTap: () => print('Pressed Read Later'),
          label: 'Add Lyric',
          labelStyle:
          TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lyric BD'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              'Lyric BD🎶',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        floatingActionButton: buildSpeedDial(),
      ),
    );
  }
}

