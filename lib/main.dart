
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediateque_tp1/Widget3000.dart';
import 'package:mediateque_tp1/Media.dart';

import 'Widget3000.dart';

const Color myColor = Color(0xFFCE93D8);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: Colors.deepPurple[200],
        accentColor: Colors.orange[50],

        //primarySwatch: Colors.deepOrange.shade50,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Mediathèque',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white) ;

  static DataBase db = new DataBase();

  static Widget3000 affichageSeries =new Widget3000(list: db.getlistSeries(),list_fav: db.getlistSaved());
  static Widget3000 affichageGames =new Widget3000(list: db.getlistGames(),list_fav: db.getlistSaved());
  static Widget3000 affichageFav =new Widget3000(list: db.getlistSaved(),list_fav: db.getlistSaved());


  static  List<Widget> _widgetOptions = <Widget>[
    Text("Bienvenue dans votre Médiathèque",textAlign: TextAlign.center, style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 40,color: Colors.deepPurple[400]))),
    affichageSeries,
    affichageGames,
    affichageFav
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<MediaItem> series= <MediaItem> [];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: GoogleFonts.montserrat(color: Colors.white)),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.deepPurple[200]

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_rounded ),
            label: 'Séries & Films',
            backgroundColor: Colors.deepPurple[200]

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset_outlined),
            label: 'Jeux Vidéo',
            backgroundColor: Colors.deepPurple[200]

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_outline_outlined),
              label: 'Mes favoris',
              backgroundColor: Colors.deepPurple[200]
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}






