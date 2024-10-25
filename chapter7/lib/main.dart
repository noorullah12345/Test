import 'package:chapter7/navigation_with_drawer.dart';
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
      // initialRoute: '1',
      // routes: {
      //   '1': (context) => ,
      //   '2': (context) => ,
      // },
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab bar'),
            centerTitle: true,
            backgroundColor: Colors.blue,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.settings_display),
                text: 'Setting',
              ),
              Tab(
                icon: Icon(Icons.phone),
                text: 'Phone',
              ),
            ]),
          ),
          body: TabBarView(children: [
            HomeScreen(),
            Setting(),
            Phone(),
          ]),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home screen of the Home '),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('The is the setting screen for the setting'),
      ),
    );
  }
}

class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text('This is the phone section for the phone '),
      ),
    );
  }
}
