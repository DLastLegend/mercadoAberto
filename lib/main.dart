import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mercado Abierto'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color(0xfff5d415),
        shadowColor: Colors.transparent,

        leading: Icon(Icons.menu),

        title: Text (widget.title),

        actions:<Widget> [
          Icon(Icons.shopping_cart_outlined),
        ],

        bottom: PreferredSize( 
          preferredSize: Size.fromHeight(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Icon(Icons.pin_drop_rounded),
              Text('Enviar para Victor Hugo - Paulo Centrone, 340'), 
            ], 
          ),
      ),
        ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.5,0.2),
            colors: <Color>[
              Color(0xfff5d415),
             Color(0xfff5f5f5f5),
            ] 
            )
        )
      )
      );
  }
}
