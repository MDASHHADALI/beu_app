import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];
var myAppBar = AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  flexibleSpace: Container( decoration : const BoxDecoration(
    gradient: LinearGradient(colors: [Color.fromARGB(255,176, 106, 231),
    Color.fromARGB(255,166, 112, 232),
    Color.fromARGB(255,131, 123, 232),
    Color.fromARGB(255,104, 132, 231),
    ]),
  ),),
  title: Text('BEU APP',style: TextStyle(fontWeight: FontWeight.bold),),
  centerTitle: true,
);
var drawerTextColor = TextStyle(
  color: Colors.black,
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.limeAccent[300],
  elevation: 0,
  child: ListView(
    children: [
      DrawerHeader(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.white,),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              image: DecorationImage(image: AssetImage("images/bihar_logo.png")),)),
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: InkWell(
          onTap: () {
            
          },
          child: ListTile(
            leading: Icon(Icons.home,color: Colors.black,),
            title: Text(
              'D A S H B O A R D',
              style: drawerTextColor,
            ),
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: InkWell(
          onTap: () {
            
          },
          child: ListTile(
            leading: Icon(Icons.settings,color: Colors.black,),
            title: Text(
              'S E T T I N G S',
              style: drawerTextColor,
            ),
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: InkWell(
          onTap: () {
            
          },
          child: ListTile(
            leading: Icon(Icons.info,color: Colors.black,),
            title: Text(
              'A B O U T',
              style: drawerTextColor,
            ),
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: InkWell(
          onTap: () {
            
          },
          child: ListTile(
            leading: Icon(Icons.logout,color: Colors.black,),
            title: Text(
              'L O G O U T',
              style: drawerTextColor,
            ),
          ),
        ),
      ),
    ],
  ),
);
