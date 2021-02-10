import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediateque_tp1/Media.dart';


class Widget3000 extends StatefulWidget{
  final List <MediaItem> list;
  final List <MediaItem> list_fav;

  Widget3000({Key key, @required this.list, this.list_fav}):super (key:key);

  @override
  _Widget3000State createState() => _Widget3000State();

}

class _Widget3000State extends State<Widget3000> {
  _Widget3000State(): super();

  ListView mediaDisplay(MediaItem item) {
    const TextStyle titleStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    const TextStyle bodyStyle = TextStyle(fontSize: 11);
    bool alreadySaved = widget.list_fav.contains(item);

    return ListView(
      shrinkWrap: true,
      physics: new NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          title: Text(
            item.name, style: GoogleFonts.montserrat(textStyle: titleStyle, color:  Colors.deepPurple[300]),
            textAlign: TextAlign.center,),
          trailing: Icon(
              alreadySaved ? Icons.star_outlined : Icons.star_outlined,
              color: alreadySaved ? Colors.deepPurple : Colors.grey),
              onTap: () {
                setState(() {
                  if (alreadySaved) {
                    widget.list_fav.remove(item);
                  } else {
                    widget.list_fav.add(item);
                  }
                });
              },
        ),
        GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            physics: new NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(5) ,
            shrinkWrap: true,
            children: [
              Image.asset(item.image),
              Align(alignment: Alignment.center,
                  child: Text(item.description,
                    style: GoogleFonts.montserrat(textStyle: bodyStyle, color: Colors.black),
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
                      height: 250,
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

