import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestione Portafoglio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light),
      ),
      home: MyHomePage(title: 'Gestione Portafoglio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Schermata Transizioni'), // Sostituisci con il tuo widget
    Text('Schermata Bilancio'), // Sostituisci con il tuo widget
    Text('Schermata Categorie'), // Sostituisci con il tuo widget
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.payments_outlined),
            label: 'Transazioni',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Bilancio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorie',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor:  Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}