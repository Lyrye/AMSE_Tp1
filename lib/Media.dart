import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class MediaItem  {
  String name;
  String description;
  String image;



  String getName() {
    return this.name;
  }

  String getDescription() {
    return this.description;
  }

  String getImage() {
    return this.image;
  }



  ListView mediaDisplay (MediaItem item)
  {
    const TextStyle titleStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.blue);
    const TextStyle bodyStyle = TextStyle(fontSize: 10);
    return ListView(
      shrinkWrap: true,
      children: [
        Text(item.name, style: GoogleFonts.breeSerif(textStyle: titleStyle)),
        GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            children: [
              Image.network(item.getImage()),
              Text(item.description, style:GoogleFonts.breeSerif(textStyle: bodyStyle) ),
            ])
      ],
    );
  }
  MediaItem(String name, String desc, String image)
      {
        this.name = name;
        this.description = desc;
        this.image = image;
      }
}

class DataBase
{
  static List <ListView> _listSeries= <ListView>[];
  MediaItem item;
  DataBase()
  {
      item = new MediaItem("name","desc","image");
    _listSeries.add(item.mediaDisplay(MediaItem(
        "Les Simpsons",
        "Les Simpson, famille américaine moyenne, vivent à Springfield. Homer, le père, a deux passions : regarder la télé et boire des bières. Mais son quotidien est rarement reposant, entre son fils Bart qui fait toutes les bêtises possibles, sa fille Lisa qui est une surdouée, ou encore sa femme Marge qui ne supporte pas de le voir se soûler à longueur de journée.",
        "https://mondisneyplus.tv/wp-content/uploads/2019/08/simpsons.jpg")));
    _listSeries.add(item.mediaDisplay(MediaItem(
        "Dark",
        "Un enfant disparu lance quatre familles dans une quête éperdue pour trouver des réponses. La chasse au coupable fait émerger les péchés et les secrets d'une petite ville.",
        "https://m.media-amazon.com/images/I/B1cB5pEqr2S._SS500_.jpg")));
    _listSeries.add(item.mediaDisplay(MediaItem(
        "Les Simpsons",
        "Les simpsons sont un famille ...",
        "https://mondisneyplus.tv/wp-content/uploads/2019/08/simpsons.jpg")));

  }

  List <ListView> getlist()
  {
    return _listSeries;
  }
}
