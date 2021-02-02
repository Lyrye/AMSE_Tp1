import 'package:flutter/material.dart';
import 'package:mediateque_tp1/Media.dart';


class Widget3000{
  Widget view;
  MediaItem mediaItem ;

  Widget3000(){
    DataBase db = new DataBase();

    view= Column(
        children: [Expanded(
        child:ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            itemCount: db.getlist().length,
            itemBuilder: (BuildContext context, int index)
            {
              return Container(
                  height: 250,
                  child: Center(child: db.getlist()[index]));
            }))]);

    /*
        ListView.builder(
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
    */
  }

  Widget getThisFuckingWidget(){return view;}

}