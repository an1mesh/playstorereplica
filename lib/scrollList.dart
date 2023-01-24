import 'package:flutter/material.dart';
import 'dart:math';

class ScrollList extends StatefulWidget {
  const ScrollList({super.key});

  @override
  State<ScrollList> createState() => _ScrollListState();
}

class _ScrollListState extends State<ScrollList> {
  static int im = Random().nextInt(10);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.all(10.0),
            child: Image.asset('assets/${im = Random().nextInt(10)}.jpg'),
          ),
        ));
    im = Random().nextInt(4);
  }
}
