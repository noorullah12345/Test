import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Container Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> options = ['item1', 'item2', 'item3'];
  String selectedItem = 'item1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Example'),
      ),
      body: DropdownButton(
          value: selectedItem,
          items: options
              .map((String e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (String? value) {
            setState(() {
              selectedItem = value!;
            });
          }),
    );
  }
}
