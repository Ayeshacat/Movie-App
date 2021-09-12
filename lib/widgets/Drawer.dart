import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_screen.dart';

class DrawerW extends StatefulWidget {
  @override
  _DrawerWState createState() => _DrawerWState();
}

class _DrawerWState extends State<DrawerW> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Container(
          height: 180.0,
          child: DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/profile-pic.jpg'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Ayesha Kanwal',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  'ayeshakanwal2911@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
            decoration: BoxDecoration(color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.black,
            size: 24.0,
          ),
          title: Text('Home',
              style: TextStyle(
                fontSize: 16,
                //color: Colors.pink[600],
              )),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
        ListTile(
            leading: Icon(Icons.favorite,
                color: Colors.black,
                size: 24.0),
            title: Text('Liked',
                style: TextStyle(
                  fontSize: 16,
                  //color: Colors.pink[600],
                )),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            }),
        ListTile(
            leading: Icon(Icons.watch_later_outlined,
                color: Colors.black,
                size: 24.0),
            title: Text('WatchList',
                style: TextStyle(
                  fontSize: 16,
                  //color: Colors.pink[600],
                )),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            }),
        ListTile(
            leading: Icon(Icons.import_export_outlined,
                color: Colors.black,
                size: 24.0),
            title: Text('TopBoxOffice',
                style: TextStyle(
                  fontSize: 16,
                  //color: Colors.pink[600],
                )),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            }),
        ListTile(
            leading: Icon(Icons.search,
                color: Colors.black,
                size: 24.0),
            title: Text('Discover',
                style: TextStyle(
                  fontSize: 16,
                  //color: Colors.pink[600],
                )),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            }),
        ListTile(
            leading: Icon(Icons.settings,
                color: Colors.black,
                size: 24.0),
            title: Text('Setting',
                style: TextStyle(
                  fontSize: 16,
                  //color: Colors.pink[600],
                )),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            }),
      ],
    ));
  }
}
