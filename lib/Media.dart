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
    const TextStyle bodyStyle = TextStyle(fontSize: 11);
    return ListView(
      shrinkWrap: true,
      physics: new NeverScrollableScrollPhysics(),
      children: [
        Align( alignment: Alignment.center,
            child: Text(item.name, style: GoogleFonts.montserrat(textStyle: titleStyle),textAlign: TextAlign.center,)),
        GridView.count(
            crossAxisCount: 2,
            physics: new NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Image.asset(item.image),
              Align( alignment: Alignment.center,
                  child:Text(item.description, style:GoogleFonts.montserrat(textStyle: bodyStyle), textAlign: TextAlign.justify, )),
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
  static List <ListView> _listGames = <ListView>[];
  MediaItem item;
  DataBase()
  {
    item = new MediaItem("name","desc","image");
    _listSeries.add(item.mediaDisplay(MediaItem(
        "LES SIMPSON",
        "Les Simpson, famille américaine moyenne, vivent à Springfield. Homer, le père, a deux passions : regarder la télé et boire des bières. Mais son quotidien est rarement reposant, entre son fils Bart qui fait toutes les bêtises possibles, sa fille Lisa qui est une surdouée, ou encore sa femme Marge qui ne supporte pas de le voir se soûler à longueur de journée.",
        "assets/images/lesSimpson.jpg")));
    _listSeries.add(item.mediaDisplay(MediaItem(
        "DARK",
        "Un enfant disparu lance quatre familles dans une quête éperdue pour trouver des réponses. La chasse au coupable fait émerger les péchés et les secrets d'une petite ville.",
        "assets/images/dark.jpg")));
    _listSeries.add(item.mediaDisplay(MediaItem(
        "PEAKY BLINDERS",
        "Birmingham, en 1919. Un gang familial règne sur un quartier de la ville : les Peaky Blinders, ainsi nommés pour les lames de rasoir qu'ils cachent dans la visière de leur casquette.",
        "assets/images/peakyBlinders.jpg")));

    _listSeries.add(item.mediaDisplay(MediaItem(
        "BLACK MIRROR",
        "Chaque épisode de cette anthologie montre la dépendance des hommes vis-à-vis de tout ce qui a un écran...",
        'assets/images/blackmirror.jpg')));

    _listGames.add(item.mediaDisplay(MediaItem(
        "Assassin's Creed: Odyssey",
        "Écrivez votre propre odyssée et devenez un héros spartiate de légende dans Assassin's Creed® Odyssey, une aventure où vous forgerez votre destin et tracerez votre chemin dans un univers sur le point de s'effondrer. Influez sur l'histoire et découvrez un univers riche et évoluant en permanence en fonction de vos choix.",
        "assets/images/acOdyssey.jpg")));

    _listGames.add(item.mediaDisplay(MediaItem(
        "Mario Kart 8 Deluxe",
        "Appuyez sur le champignon et affûtez vos carapaces, Mario Kart 8 Deluxe va tout retourner sur Nintendo Switch ! Foncez à fond les ballons la tête à l'envers avec les pneus anti-gravité ! Irez-vous plus vite en passant par le plafond ? Ou allez-vous tracer au sol entre les bananes et les batailles de carapace ? Tous les coups les plus fourbes sont permis pour se hisser à la première place !",
        "assets/images/mk8.jpg")));
    _listGames.add(item.mediaDisplay(MediaItem(
        "The Legend of Zelda: Breath of the wild",
        "Oubliez tout ce que vous savez sur les jeux The Legend of Zelda. Plongez dans un monde de découverte, d'exploration et d'aventure dans The Legend of Zelda: Breath of the Wild, un nouveau jeu qui vient bouleverser la série à succès. Voyagez à travers champs, traversez des forêts et grimpez sur des sommets dans votre périple où vous explorez le royaume d'Hyrule en ruines à travers cette aventure à ciel ouvert.",
        "assets/images/zeldaBOTW.jpg")));
  }

  List <ListView> getlistSeries()
  {
    return _listSeries;
  }
  List <ListView> getlistGames()
  {
    return _listGames;
  }

}
