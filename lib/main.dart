
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediateque_tp1/Widget3000.dart';
import 'package:mediateque_tp1/Media.dart';

import 'Widget3000.dart';

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

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Mediathèque'),
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
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  static DataBase db = new DataBase();

  static Widget3000 affichageSeries =new Widget3000(db.getlistSeries());
  static Widget3000 affichageGames =new Widget3000(db.getlistGames());


  static Widget listViewPage()
  {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Text("Bonjour"),
                Text("hdkldas")],)

    );});
  }

  static  List<Widget> _widgetOptions = <Widget>[
    Text("Bienvenue dans votre Médiathèque",textAlign: TextAlign.center, style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 40,color: Colors.blue))),
    affichageSeries.getThisFuckingWidget(),
    affichageGames.getThisFuckingWidget(),
    Text (
      'Mes favoris',
      style: optionStyle,
    )
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
        title: Text(widget.title),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_rounded ),
            label: 'Séries & Films',
            backgroundColor: Colors.blue

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset_outlined),
            label: 'Jeux Vidéo',
            backgroundColor: Colors.blue

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded),
              label: 'Mes favoris',
              backgroundColor: Colors.blue
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}






