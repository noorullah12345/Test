
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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Drawer icon in flutter'),
      ),
      // this is use for the left drawe
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       DrawerHeader(child: Text('header drawer')),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text('Home page'),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.info),
      //         title: Text('about'),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('setting'),
      //       )
      //     ],
      //   ),
      // ),
      //this is use for the right drawer
      // endDrawer: Drawer(),

      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         child: Text('Menu'),
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //       ),
      //       ListTile(
      //           leading: Icon(Icons.home), title: Text('Home'), onTap: () {}),
      //       ListTile(
      //           leading: Icon(Icons.category_sharp),
      //           title: Text('catagories'),
      //           onTap: () {
      //             Navigator.pop(context);
      //           }),
      //       ListTile(
      //           leading: Icon(Icons.menu),
      //           title: Text('order'),
      //           onTap: () {
      //             Navigator.pop(context);
      //           }),
      //       ListTile(
      //           leading: Icon(Icons.favorite),
      //           title: Text('WhishList'),
      //           onTap: () {}),
      //       ListTile(
      //           leading: Icon(Icons.settings),
      //           title: Text('settings'),
      //           onTap: () {
      //             Navigator.push(context,
      //                 MaterialPageRoute(builder: (context) => whish()));
      //           }),
      //     ],
      //   ),
      // )
      drawer: Drawer(
        child: ListView(
          children: [
           
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://flutter-tutorial.net/images/sample_background_image.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/33576285?v=4'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('jhon ibrahim',
                      style: TextStyle(
                          fontWeight: FontWeight.w200, color: Colors.blue)),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the tap if needed
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                // Handle the tap if needed
              },
            ),
          ],
        ),
      ),
    );
  }
}
