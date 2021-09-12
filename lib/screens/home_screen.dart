import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screens/search_screen.dart';
import 'package:movie_app/style/theme.dart' as Style;
import 'package:movie_app/widgets/best_movies.dart';
import 'package:movie_app/widgets/genres.dart';
import 'package:movie_app/widgets/now_playing.dart';
import 'package:movie_app/widgets/persons.dart';
import 'package:movie_app/widgets/Drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        centerTitle: true,
        title: Text("Discover"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen()
                ),
              );
            },
            icon: Icon(EvaIcons.searchOutline, color: Colors.white,)
          )
        ],
      ),
      drawer: DrawerW(),
      body: ListView(
        children: <Widget>[
          NowPlaying(),
          GenresScreen(),
          PersonsList(),
          BestMovies(),
        ],
      ),
    );
  }
}