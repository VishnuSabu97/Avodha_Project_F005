import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Staggered Grid View",
      debugShowCheckedModeBanner: false,
      home: StaggeredView(),
    );
  }
}

class BackgroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData iconData;

  BackgroundTile({
    required this.backgroundColor,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(iconData, color: Colors.white),
    );
  }
}

class StaggeredView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StaggeredViewState();
}

class StaggeredViewState extends State<StaggeredView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered View"),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: BackgroundTile(
                    backgroundColor: Colors.blueAccent, iconData: Icons.add),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: BackgroundTile(
                    backgroundColor: Colors.red,
                    iconData: Icons.g_translate_sharp),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: BackgroundTile(
                    backgroundColor: Colors.blueAccent,
                    iconData: Icons.photo_library),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: BackgroundTile(
                    backgroundColor: Colors.red,
                    iconData: Icons.account_circle),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: BackgroundTile(
                    backgroundColor: Colors.blueAccent,
                    iconData: Icons.reddit_outlined),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: BackgroundTile(
                    backgroundColor: Colors.red, iconData: Icons.safety_check),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: BackgroundTile(
                    backgroundColor: Colors.blueAccent,
                    iconData: Icons.pages_outlined),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: BackgroundTile(
                    backgroundColor: Colors.red, iconData: Icons.radar_rounded),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: BackgroundTile(
                    backgroundColor: Colors.blueAccent, iconData: Icons.cached),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: BackgroundTile(
                    backgroundColor: Colors.red, iconData: Icons.hail),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: BackgroundTile(
                    backgroundColor: Colors.blueAccent,
                    iconData: Icons.ice_skating),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
