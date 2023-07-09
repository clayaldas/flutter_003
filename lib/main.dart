import 'package:flutter/material.dart';

void main() {
  //runApp(MyApp());
  //runApp(MyApp());
  //runApp(MyAppDos());

  runApp(MyAppDos('Irlanda'));
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  final List<String> listaPaises = [
    'Ecuador',
    'Colombia',
    'Brasil',
    'Argentina',
    'Uruguay',
    'Uruguay',
    'Peru',
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sexto de TI'),
        ),
        body: Column(
          children: listaPaises.map((e) => Pais(e)).toList(),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              //print('Presiono el boton');
              listaPaises.add('Francia');
              print(listaPaises.length);
            }),
      ),
    );
  }
}

class Pais extends StatelessWidget {
  // const Pais({super.key});

/*
  Pais(String pais) {
    nuevoPais = pais;
  }
  */

  // variables de clase
  String nuevoPais = 'Colombia';

  Pais(this.nuevoPais);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(nuevoPais),
    );
  }
}

class MyAppDos extends StatefulWidget {
  String nuevoPais;

  MyAppDos(this.nuevoPais);

  @override
  State<StatefulWidget> createState() {
    return AdministrarEstado();
  }
}

class AdministrarEstado extends State<MyAppDos> {
  List<String> listaPaises = [];

  @override
  void initState() {
    super.initState();

    print('Se ejecuto el INITSTATE');

    listaPaises = [
      'Ecuador',
      'Colombia',
      'Brasil',
      'Argentina',
      'Uruguay',
      'Uruguay',
      'Peru',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sexto de TI'),
        ),
        body: Column(
          children: listaPaises.map((e) => Pais(e)).toList(),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              //print('Presiono el boton');

              /*
              setState(() {});
              listaPaises.add('Francia');
              print(listaPaises.length);
              */

              setState(() {
                //listaPaises.add('Francia');

                listaPaises.add(widget.nuevoPais);
                //print(listaPaises.length);
                print('Se ejecuto el BUILD');
              });
            }),
      ),
    );
  }
}
