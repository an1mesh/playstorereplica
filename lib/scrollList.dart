import 'package:flutter/material.dart';
import 'dart:math';

class ScrollList extends StatefulWidget {
  const ScrollList({super.key});

  @override
  State<ScrollList> createState() => _ScrollListState();
}

class _ScrollListState extends State<ScrollList> {
  var size, height, width;
  static int img = Random().nextInt(10);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return SizedBox(
        height: height / 5,
        child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            height: height / 3,
            width: width / 3,
            margin: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/${img = Random().nextInt(10)}.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
