import 'package:flutter/material.dart';

import '../bloc/count_bloc.dart';

// ignore: must_be_immutable
class CountView extends StatelessWidget {
  CountBloc countBloc;
  CountView({Key? key, required this.countBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("CountView Build!!");
    return Center(
      child: StreamBuilder(
        stream: countBloc.count,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.toString());
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
