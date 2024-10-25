import 'package:flutter/material.dart';

class HomeScreenstate extends StatefulWidget {
  @override
  State<HomeScreenstate> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreenstate> {
  Color backgroundColor = Colors.orange;
  Future<void> _selectedColor(BuildContext context) async {
    final selectedcolor = await Navigator.pushNamed(context, '2');
    if (selectedcolor != null) {
      backgroundColor != selectedcolor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.orange,
      width: double.infinity,
      height: double.infinity,
      child: Container(
        height: 50,
        width: 50,
        child: ElevatedButton(
            onPressed: () {
              _selectedColor(context);
            },
            child: Text('select color')),
      ),
    ));
  }
}

class ColorSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Color'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorButton(color: Colors.red, context: context),
          ColorButton(color: Colors.blue, context: context),
          ColorButton(color: Colors.green, context: context),
        ],
      ),
    );
  }

  Widget ColorButton({required Color color, required BuildContext context}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
      onPressed: () {
        // Return the selected color to the HomeScreen
        Navigator.pop(context, color);
      },
      child: Text(
        colorToString(color),
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  String colorToString(Color color) {
    if (color == Colors.red) return 'Red';
    if (color == Colors.blue) return 'Blue';
    if (color == Colors.green) return 'Green';
    return 'Unknown Color';
  }
}
