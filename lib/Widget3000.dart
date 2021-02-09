import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediateque_tp1/Media.dart';


class Widget3000 extends StatefulWidget{
  final List <MediaItem> list ;

  Widget3000({Key key, @required this.list}):super (key:key);

  @override
  _Widget3000State createState() => _Widget3000State();

}

class _Widget3000State extends State<Widget3000> {
  _Widget3000State(): super();
  final _saved = List <MediaItem>();
  DataBase dataB = new DataBase();

  ListView mediaDisplay(MediaItem item) {
    const TextStyle titleStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue);
    const TextStyle bodyStyle = TextStyle(fontSize: 11);
    final alreadySaved = _saved.contains(MediaItem);

    return ListView(
      shrinkWrap: true,
      physics: new NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          title: Text(
            item.name, style: GoogleFonts.montserrat(textStyle: titleStyle),
            textAlign: TextAlign.center,),
          trailing: Icon(
              alreadySaved ? Icons.star_outline_outlined : Icons.star_border_outlined,
              color: alreadySaved ? Colors.red : null),
              onTap: () {
                setState(() {
                  if (alreadySaved) {
                    _saved.remove(item);
                  } else {
                    _saved.add(item);
                  }
                });
              },
        ),
        GridView.count(
            crossAxisCount: 2,
            physics: new NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Image.asset(item.image),
              Align(alignment: Alignment.center,
                  child: Text(item.description,
                    style: GoogleFonts.montserrat(textStyle: bodyStyle),
                    textAlign: TextAlign.justify,)),
            ]),
      ],
    );
  }

  List <ListView> buildList (List <MediaItem> listItem)
  {
    List <ListView> listDisplay= <ListView>[];
    for (int i =0; i< listItem.length; i++)
      {
        listDisplay.add(mediaDisplay(listItem[i]));
      }
    return listDisplay;
  }


  Widget build(BuildContext context) {

    List <ListView> _list= buildList(widget.list);

    return Column(
        children: [Expanded(
            child:ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index)
                {
                  return Container(
                      height: 300,
                      child: Center(child: _list[index]));
                })
        ),
        ]
    );
  }
}



class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fiche d'information"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Retour à la liste'),
        ),
      ),
    );
  }
}

