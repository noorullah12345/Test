import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedFont = 'Roboto'; // Default font
  final List<String> fonts = [
    'Roboto',
    'Lobster',
    'Open Sans',
    'Dancing Script',
    'Montserrat',
  ]; // List of Google Fonts

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Google Fonts Example'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Hello this is the google font ',
                style: GoogleFonts.getFont(selectedFont, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              DropdownButton(
                  value: selectedFont,
                  icon: Icon(Icons.arrow_downward),
                  items: fonts.map<DropdownMenuItem<String>>((String font) {
                    return DropdownMenuItem(value: font, child: Text(font));
                  }).toList(),
                  onChanged: (String? NewVlaue) {
                    setState(() {
                      selectedFont = NewVlaue!;
                    });
                  })
            ],
          ),
        ));
  }
}
