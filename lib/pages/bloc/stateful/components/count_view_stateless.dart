import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CountViewStateless extends StatelessWidget {
  int count;
  CountViewStateless({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("CountViewStateless Build !!");
    return Center(child: Text(count.toString()));
  }
}
