import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo Tabbar Diego Correa",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MiPaginaInicial(),
    );
  }
} //fin AppMiTabBar

//stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar Diego Correa"),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                text: "Nissan",
                icon: Icon(Icons.account_circle),
              ),
              Tab(
                text: "Mazda",
                icon: Icon(Icons.add_reaction),
              ),
              Tab(
                text: "Honda",
                icon: Icon(Icons.accessibility_outlined),
              ),
              Tab(
                text: "Toyota",
                icon: Icon(Icons.airport_shuttle_sharp),
              ),
            ]), // fin bottom tabbar
          ),
          body: TabBarView(children: const <Widget>[
            Center(
              child: Text(
                "Autos Nissan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                "Autos Mazda",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                "Autos Honda",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                "Autos Toyota",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ] //jardin de niños
              ), // fin de tabbarview
        ) //fin de scaffold
        ); //DefaultTabController
  } // fin widget
} //_MiPaginaInicialState
