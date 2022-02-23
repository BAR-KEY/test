import 'package:flutter/material.dart';
import 'counter.dart';

class Stream extends StatelessWidget {
  const Stream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Counter(),
    );
  }
}
