import 'package:flutter/material.dart';

class firstScreen extends StatelessWidget {
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(
              hintText: 'enter your name',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondClass(name: name.text)));
              },
              child: Text('Greek'))
        ],
      ),
    );
  }
}

class SecondClass extends StatelessWidget {
  final String name;

  SecondClass({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Greet Screen")),
      body: Center(child: Text('Hello, $name!')),
    );
  }
}
