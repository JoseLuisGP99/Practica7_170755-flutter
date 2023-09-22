import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
          new AppBar(title: new Text("MovieApp - 170755"), actions: <Widget>[
        new IconButton(
          icon: new Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ]),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new DrawerHeader(child: new MaterialApp()),
          new ListTile(
            title: new Text("Peliculas"),
            trailing: new Icon(Icons.local_movies),
          ),
          new Divider(
            height: 5.0,
          ),
          new ListTile(
            title: new Text("Televisión"),
            trailing: new Icon(Icons.live_tv),
          ),
          new Divider(
            height: 5.0,
          ),
          new ListTile(
            title: new Text("Cerrar"),
            trailing: new Icon(Icons.close),
            onTap: () => Navigator.of(context),
          ),
        ],
      )),
      bottomNavigationBar: new BottomNavigationBar(
        items: _obtenerIconos(),
      ),
      body: new PageView(),
    );
  }

  List<BottomNavigationBarItem> _obtenerIconos() {
    return [
      new BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up), label: "Populares"),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.update), label: "Próximamente"),
      new BottomNavigationBarItem(icon: new Icon(Icons.star), label: "Mejores")
    ];
  }
}
