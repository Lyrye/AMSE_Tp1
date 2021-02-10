import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget3000.dart';


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

  MediaItem(String name, String desc, String image) {
    this.name = name;
    this.description = desc;
    this.image = image;
  }
}
class DataBase
{
  static List <MediaItem> listSeries= <MediaItem>[];
  static List <MediaItem> _listGames = <MediaItem>[];
  static List  _saved = List <MediaItem>();


  DataBase()
  {
    listSeries.add(MediaItem(
        "LES SIMPSON",
        "Les Simpson, famille américaine moyenne, vivent à Springfield. Homer, le père, a deux passions : regarder la télé et boire des bières. Mais son quotidien est rarement reposant, entre son fils Bart qui fait toutes les bêtises possibles, sa fille Lisa qui est une surdouée, ou encore sa femme Marge qui ne supporte pas de le voir se soûler à longueur de journée.",
        "assets/images/lesSimpson.jpg"));
    listSeries.add((MediaItem(
        "DARK",
        "Un enfant disparu lance quatre familles dans une quête éperdue pour trouver des réponses. La chasse au coupable fait émerger les péchés et les secrets d'une petite ville.",
        "assets/images/dark.jpg")));
    listSeries.add((MediaItem(
        "PEAKY BLINDERS",
        "Birmingham, en 1919. Un gang familial règne sur un quartier de la ville : les Peaky Blinders, ainsi nommés pour les lames de rasoir qu'ils cachent dans la visière de leur casquette.",
        "assets/images/peakyBlinders.jpg")));

    listSeries.add((MediaItem(
        "BLACK MIRROR",
        "Chaque épisode de cette anthologie montre la dépendance des hommes vis-à-vis de tout ce qui a un écran...",
        'assets/images/blackmirror.jpg')));

    _listGames.add((MediaItem(
        "Assassin's Creed: Odyssey",
        "Écrivez votre propre odyssée et devenez un héros spartiate de légende dans Assassin's Creed® Odyssey, une aventure où vous forgerez votre destin et tracerez votre chemin dans un univers sur le point de s'effondrer. Influez sur l'histoire et découvrez un univers riche et évoluant en permanence en fonction de vos choix.",
        "assets/images/acOdyssey.jpg")));

    _listGames.add((MediaItem(
        "Mario Kart 8 Deluxe",
        "Appuyez sur le champignon et affûtez vos carapaces, Mario Kart 8 Deluxe va tout retourner sur Nintendo Switch ! Foncez à fond les ballons la tête à l'envers avec les pneus anti-gravité ! Irez-vous plus vite en passant par le plafond ? Ou allez-vous tracer au sol entre les bananes et les batailles de carapace ? Tous les coups les plus fourbes sont permis pour se hisser à la première place !",
        "assets/images/mk8.jpg")));
    _listGames.add((MediaItem(
        "The Legend of Zelda: Breath of the wild",
        "Oubliez tout ce que vous savez sur les jeux The Legend of Zelda. Plongez dans un monde de découverte, d'exploration et d'aventure dans The Legend of Zelda: Breath of the Wild, un nouveau jeu qui vient bouleverser la série à succès. Voyagez à travers champs, traversez des forêts et grimpez sur des sommets dans votre périple où vous explorez le royaume d'Hyrule en ruines à travers cette aventure à ciel ouvert.",
        "assets/images/zeldaBOTW.jpg")));
  }

  List <MediaItem> getlistSeries()
  {
    return listSeries;
  }
  List <MediaItem> getlistGames()
  {
    return _listGames;
  }
  List <MediaItem> getlistSaved()
  {
    return _saved;
  }

}
