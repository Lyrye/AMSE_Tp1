import 'package:flutter/material.dart';
import 'package:mediateque_tp1/Media.dart';


class Widget3000{
  Widget view;
  MediaItem mediaItem ;



  Widget3000(List <ListView> list){
    view= Column(
        children: [Expanded(
          child:ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index)
              {
                return Container(
                    height: 300,
                    child: Center(child: list[index]));
              })
        )
      ]
    );
  }

  Widget getThisFuckingWidget(){return view;}

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