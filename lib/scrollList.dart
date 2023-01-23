import 'dart:ui';

import 'package:flutter/material.dart';

class ScrollList extends StatefulWidget {
  const ScrollList({super.key});

  @override
  State<ScrollList> createState() => _ScrollListState();
}

class _ScrollListState extends State<ScrollList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.all(10.0),
            child: Image.asset('assets/checklist.png'),
          ),
        ));
  }
}
