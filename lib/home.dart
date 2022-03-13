import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectionIndex = 0;

  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    Container(color: Colors.red),
    // TODO: Replace with Card2
    Container(color: Colors.green),
    // TODO: Replace with Card3
    Container(color: Colors.blue)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fooderlich",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectionIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Card",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Card2",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Card3",
          ),
        ],
        currentIndex: _selectionIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
