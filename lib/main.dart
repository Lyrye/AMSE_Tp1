
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.deepPurple[200],
        accentColor: Colors.deepPurple[100],
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

  static DataBase db = new DataBase();

  static AffichageList affichageSeries = new AffichageList(list: db.getlistSeries(),listFav: db.getlistSaved());
  static AffichageList affichageGames = new AffichageList(list: db.getlistGames(),listFav: db.getlistSaved());
  static AffichageList affichageFav = new AffichageList(list: db.getlistSaved(),listFav: db.getlistSaved());
  static AffichageList affichafeFilms = new AffichageList(list: db.getlistFilms(), listFav: db.getlistSaved());


  static  List<Widget> _widgetOptions = <Widget>[
    Text("Bienvenue dans votre Médiathèque",textAlign: TextAlign.center, style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 40,color: Colors.deepPurple[400]))),
    affichageSeries,
    affichafeFilms,
    affichageGames,
    affichageFav,

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void info (){
    Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (BuildContext context){
            return Scaffold(
              appBar: AppBar(
                title: Text("Information", style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 20,color: Colors.white))),
              ),
              body: Container (
                alignment: Alignment.bottomRight,
                child: ListView(
                  children: [
                    Text(""),
                    Text(""),
                    Text ("Application Médiathèque", textAlign: TextAlign.center, style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 30,color: Colors.deepPurple[400]))),
                    Text(""),
                    Text(""),
                    Text ("Médiathèque est une application réalisé en Dart avec Flutter. Elle permet l'accès à des information grâce à 5 onglets: Home, Séries, Films, Jeux Vidéo et Favoris. Il est possible d'ajouter des médias à une liste de favoris consultable dans l'onglet Favoris", textAlign: TextAlign.justify, style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 20,color: Colors.deepPurple[200]))),
                    Text(""),
                    Text(""),
                    Text(""),
                    Text("Réalisé par Lila NICKLER dans le cadre de l'UV AMSE en février 2021",textAlign: TextAlign.justify, style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 20,color: Colors.deepPurple[200]))),
                    Image.asset("assets/enjoy.png"),
                  ],
                ),
              )
            );
          }
        )
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: GoogleFonts.montserrat(color: Colors.white)),
        actions: [
          IconButton(icon: Icon(Icons.info_outline, color: Colors.white), onPressed: info)
        ],
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar  (

        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.deepPurple[200]

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_rounded ),
            label: 'Séries',
            backgroundColor: Colors.deepPurple[200]

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_roll_outlined),
              label: 'Films',
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
    );
  }


}






