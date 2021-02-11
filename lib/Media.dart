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
  static List <MediaItem> _listFilms = <MediaItem>[];

  static List  _saved = List <MediaItem>();


  DataBase()
  {
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

    listSeries.add((MediaItem(
        "WestWorld",
        "Westworld est un parc d'attractions futuriste recréant différents univers, dont l'univers de l'Ouest américain (Far West) du xixe siècle. Il est peuplé d'androïdes, appelés « hôtes » (hosts), réinitialisés à la fin de chaque boucle narrative. ",
        'assets/images/westworld.jpg')));

    listSeries.add((MediaItem(
        "Sherlock",
        "Cette adaptation libre des romans et nouvelles d'Arthur Conan Doyle présente le célèbre duo dans un contexte contemporain. En effet la série transpose l'époque dans laquelle évoluent les deux personnages de la fin du xixe siècle au xxie siècle.",
        'assets/images/sherlock.jpg')));

    listSeries.add((MediaItem(
        "Brooklyn 99",
        "Brooklyn Nine-Nine raconte la vie d'un commissariat de police dans l'arrondissement de Brooklyn à New York. L'arrivée d'un nouveau capitaine, froid et strict, fait rapidement regretter aux détectives son prédécesseur.",
        'assets/images/brooklyn.jpg')));

    listSeries.add((MediaItem(
        "Alice in Borderlands",
        "Arisu, jeune homme apathique, sans emploi et obsédé par les jeux vidéo, se retrouve soudainement dans une étrange version vidée de Tokyo dans laquelle lui et ses amis doivent participer à des jeux dangereux pour survivre. ",
        'assets/images/alice.jpg')));

    listSeries.add(MediaItem(
        "LES SIMPSON",
        "Les Simpson, famille américaine moyenne, vivent à Springfield. Homer, le père, a deux passions : regarder la télé et boire des bières. Mais son quotidien est rarement reposant, entre son fils Bart qui fait toutes les bêtises possibles, sa fille Lisa qui est une surdouée, ou encore sa femme Marge qui ne supporte pas de le voir se soûler à longueur de journée.",
        "assets/images/lesSimpson.jpg"));

    listSeries.add((MediaItem(
        "Doctor Who",
        "Doctor Who relate les aventures de son personnage principal, un extraterrestre de race inconnue, se présentant comme un Seigneur du Temps, appelé le Docteur.",
        'assets/images/doctorWho.jpg')));

    listSeries.add((MediaItem(
        "How to get away with murderer",
        "Annalise Keating, professeure de droit pénal et avocate renommée à la tête de son propre cabinet à Philadelphie. Chaque année, quelques-uns de ses étudiants ont le privilège de travailler dans son cabinet. Mais un jour, ces derniers sont impliqués dans un meurtre…",
        'assets/images/murderer.jpg')));



    _listFilms.add((MediaItem(
        "Fight Club",
        "Le narrateur, sans identité précise, vit seul, travaille seul, dort seul, mange seul ses plateaux-repas pour une personne comme beaucoup d'autres personnes seules qui connaissent la misère humaine, morale et sexuelle. C'est pourquoi il va devenir membre du Fight club,",
        'assets/images/fightClub.jpg')));

    _listFilms.add((MediaItem(
        "Parasite",
        "Toute la famille de Ki-taek est au chômage, et s’intéresse fortement au train de vie de la richissime famille Park. Un jour, leur fils réussit à se faire recommander pour donner des cours particuliers d’anglais chez les Park.",
        'assets/images/parasite.jpg')));

    _listFilms.add((MediaItem(
        "Baby Driver",
        "Chauffeur pour des braqueurs de banque, Baby a un truc pour être le meilleur dans sa partie : il roule au rythme de sa propre playlist. ",
        'assets/images/babyDriver.jpg')));

    _listFilms.add((MediaItem(
        "Drive",
        "Un jeune homme solitaire, The Driver, conduit le jour à Hollywood pour le cinéma en tant que cascadeur et la nuit pour des truands.",
        'assets/images/drive.jpg')));

    _listFilms.add((MediaItem(
        "Your Name",
        "Mitsuha, une étudiante du Japon rural, et Taki, un étudiant de Tokyo, rêvent chacun — sans se connaître — de la vie de l'autre. Un matin, ils se réveillent dans la peau de l'autre : autre sexe, autre famille, autre maison, autre paysage…",
        'assets/images/yourName.jpg')));
    _listFilms.add((MediaItem(
        "Dunkerque",
        "Le récit de la fameuse évacuation des troupes alliées de Dunkerque en mai 1940.",
        'assets/images/dunkerque.jpg')));

    _listFilms.add((MediaItem(
        "La La Land",
        "Au cœur de Los Angeles, une actrice en devenir prénommée Mia sert des cafés entre deux auditions.De son côté, Sebastian, passionné de jazz, joue du piano dans des clubs miteux pour assurer sa subsistance. ",
        'assets/images/lalaland.jpg')));

    _listFilms.add((MediaItem(
        "Inception",
        "Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable.",
        'assets/images/inception.jpg')));

    _listFilms.add((MediaItem(
        "Avengers",
        "Lorsque Nick Fury, le directeur du S.H.I.E.L.D., l'organisation qui préserve la paix au plan mondial, cherche à former une équipe de choc pour empêcher la destruction du monde, Iron Man, Hulk, Thor, Captain America, Hawkeye et Black Widow répondent présents.",
        'assets/images/avengers.jpg')));

    _listFilms.add((MediaItem(
        "Dernier train pour Busan",
        "Un virus inconnu se répand en Corée du Sud, l'état d'urgence est décrété. Les passagers du train KTX se livrent à une lutte sans merci afin de survivre jusqu'à Busan, l'unique ville où ils seront en sécurité...",
        'assets/images/busan.jpg')));


    _listGames.add((MediaItem(
        "Assassin's Creed: Odyssey",
        "Écrivez votre propre odyssée et devenez un héros spartiate de légende dans Assassin's Creed® Odyssey, une aventure où vous forgerez votre destin et tracerez votre chemin dans un univers sur le point de s'effondrer. Influez sur l'histoire et découvrez un univers riche et évoluant en permanence en fonction de vos choix.",
        "assets/images/acOdyssey.jpg")));

    _listGames.add((MediaItem(
        "Mario Kart 8 Deluxe",
        "Appuyez sur le champignon et affûtez vos carapaces, Mario Kart 8 Deluxe va tout retourner sur Nintendo Switch ! Foncez à fond les ballons la tête à l'envers avec les pneus anti-gravité ! Irez-vous plus vite en passant par le plafond ? Ou allez-vous tracer au sol entre les bananes et les batailles de carapace ? Tous les coups les plus fourbes sont permis pour se hisser à la première place !",
        "assets/images/mk8.jpg")));
    _listGames.add((MediaItem(
        "The Legend of Zelda: BOTW",
        "Plongez dans un monde de découverte, d'exploration et d'aventure dans The Legend of Zelda: Breath of the Wild, un nouveau jeu qui vient bouleverser la série à succès.",
        "assets/images/zeldaBOTW.jpg")));

    _listGames.add((MediaItem(
        "Civilization VI",
        "Civilization VI est un jeu de stratégie proposant au joueur de régner en maître sur le monde au fil des siècles. C'est le sixième opus de la saga reconnue des Sid Meier's Civilization",
        "assets/images/civ6.jpg")));

    _listGames.add((MediaItem(
        "Hitman 3",
        "Hitman 3 est un jeu d'infiltration dans lequel vous incarnez l'agent 47.",
        "assets/images/hitman3.jpg")));

    _listGames.add((MediaItem(
        "Anno 18000",
        "Anno 1800 est un jeu de gestion qui se déroule au 19ème siècle, à l'aube de l'ère industrielle. Comme d'habitude, le jeu propose de mettre vos talents de dirigeant à l'épreuve dans la construction de métropoles pour par la suite explorer et conquérir des terres nouvelles.",
        "assets/images/anno1800.jpg")));

    _listGames.add((MediaItem(
        "Stardew Valley",
        "Avec votre petite faux, vous allez devoir entretenir la ferme familiale dont vous venez d'hériter. Agriculture, entretien des animaux, minage, voilà les principales activités qui vont occuper votre quotidien.",
        "assets/images/stardewValley.jpg")));

    _listGames.add((MediaItem(
        "Final Fantasy VII: Remake",
        "Final Fantasy VII Remake est le remake de Final Fantasy VII. Le joueur y incarne toujours Cloud, un ancien soldat ayant rejoint le groupe terroriste Avalanche. Ce dernier essaye de déjouer les plans de la Shinra et en vient à se battre avec Sephiroth.",
        "assets/images/ff7.jpg")));

    _listGames.add((MediaItem(
        "The binding of Isaac: Rebirth",
        "The Bingind of Isaac est un jeu d'action-aventure de type rogue-like. Vous incarnez Isaac, un jeune garçon qui va parcourir des donjons toujours plus sombre et toujours plus sanglants afin d'atteindre son objectif : tuer sa génitrice.",
        "assets/images/isaac.jpg")));

    _listGames.add((MediaItem(
        "What Remains of Edith Finch",
        "What Remains of Edith Finch est une collection d'histoires courtes narrant les péripéties d'une famille maudite dans l'État de Washington. La maison dans laquelle se passe l'action est un acteur à part entière de l'intrigue et son architecture et son aménagement jouent un grand rôle dans l'histoire tragique qui nous est relatée.",
        "assets/images/finch.jpg")));


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
  List <MediaItem> getlistFilms()
  {
    return _listFilms;
  }



}
