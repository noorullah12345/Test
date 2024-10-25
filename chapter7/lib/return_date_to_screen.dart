import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  State<HomeScreenPage> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreenPage> {
  Color backgroundColor = Colors.orange;
  var _selectedPizza;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                final selectedPizza = await Navigator.pushNamed(context, '2');
                setState(() {
                  _selectedPizza = selectedPizza;
                });
              },
              child: Text('Food option')),
          SizedBox(
            height: 20,
          ),
          Text('Slected food is ${_selectedPizza}')
        ],
      ),
    );
  }
}

class PizzaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('pizza'),
            onTap: () {
              Navigator.of(context).pop('pizza');
            },
          ),
          ListTile(
            title: Text('burger'),
            onTap: () {
              Navigator.of(context).pop('Burger');
            },
          ),
          ListTile(
            title: Text('Shurma'),
            onTap: () {
              Navigator.of(context).pop('Shurma');
            },
          ),
          ListTile(
            title: Text('chai'),
            onTap: () {
              Navigator.of(context).pop('Chai');
            },
          )
        ],
      ),
    );
  }
}
