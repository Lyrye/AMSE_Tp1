
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediateque_tp1/Widget3000.dart';
import 'package:mediateque_tp1/Media.dart';

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
  static Widget3000 affichage=new Widget3000();

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
    affichage.getThisFuckingWidget() ,
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
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






