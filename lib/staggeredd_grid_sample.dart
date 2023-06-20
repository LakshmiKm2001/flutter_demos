//SingleChildScrollView-to covert a widget into scrollable space. eg- container
//to create customized scrollable space
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'MyWidget.dart';

class StaggerdGridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:StaggeredGrid.count(
          crossAxisCount: 4, //so max crossAxisCellCount will be 4
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [ //can also use list.generate
            StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
             child: MyCustomWidget(icons:Icons.account_box_sharp,bgcolor: Colors.cyan)),

            StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1,
             child: MyCustomWidget(icons: Icons.doorbell_outlined)),

            StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 2,
             child:MyCustomWidget(icons: Icons.food_bank)),

            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
             child:MyCustomWidget(icons: Icons.remove_red_eye)),

            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
             child:MyCustomWidget(icons: Icons.password)),

            StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
             child: MyCustomWidget(icons: Icons.flag_outlined)),
          ],
          ),
    ));
  }

}