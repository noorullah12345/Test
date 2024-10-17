import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infinite Scroll Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InfiniteScroolList(),
    );
  }
}

class InfiniteScroolList extends StatefulWidget {
  @override
  _InfiniteScrollListState createState() => _InfiniteScrollListState();
}

class _InfiniteScrollListState extends State<InfiniteScroolList> {
  final ScrollController _scrollController = ScrollController();
  List<int> _items = List.generate(20, (index) => index);
  bool _isloading = false;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent &&
          !_isloading) {
        _loadingMoreItems();
      }
    });
  }

  Future _loadingMoreItems() async {
    setState(() {
      _isloading = true;
    });
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _items.addAll(List.generate(20, (index) => _items.length + index));
      _isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: _items.length + 1,
                  itemBuilder: (BuildContext context, index) {
                    if (index == _items.length) {
                      return _isloading
                          ? Padding(
                              padding: EdgeInsets.all(20),
                              child: Center(
                                child: CircularProgressIndicator(),
                              ))
                          : SizedBox.shrink();
                    }
                    return ListTile(
                      title: Text('items :${_items[index]}'),
                    );
                  })),
        ],
      ),
    );
  }
}
