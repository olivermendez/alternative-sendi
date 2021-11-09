import 'package:flutter/material.dart';
import 'package:my_app/models/token.dart';
import 'package:my_app/src/pages/createshipment.dart';
import 'package:my_app/src/pages/myshipments_page.dart';

class Home extends StatefulWidget {
  //final Token token;
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final token = ModalRoute.of(context)!.settings.arguments as Token?;

    List<Widget> _widgetOptions = <Widget>[
      CreateShipmentPage(token: token as Token),
      MyShipmentPage(),
    ];
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            title: Text('Create'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            title: Text('My Ship'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(3, 9, 23, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
