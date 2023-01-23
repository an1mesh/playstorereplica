import 'package:flutter/material.dart';
import 'package:playstorepage/scrollList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.gamepad), text: 'Games'),
          Tab(icon: Icon(Icons.apps), text: 'Apps')
        ]),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
          CircleAvatar(
            child: Image.asset('assets/ani.jpg'),
          ),
        ],
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        title: Text('Play Store'),
      ),
      body: Container(
          child: SingleChildScrollView(
              child: Column(children: [
        ScrollList(),
        ScrollList(),
        ScrollList(),
        ScrollList(),
        ScrollList(),
        ScrollList(),
        ScrollList(),
        ScrollList(),
      ]))),
    );
  }
}
