import 'package:flutter/material.dart';

import 'bloc_pattern/ui/bloc_display_widget.dart';
import 'stateful/ui/plus_stateful_display_widget.dart';

class Bloc extends StatelessWidget {
  const Bloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            // ignore: deprecated_member_use
            child: FlatButton(
              color: Colors.grey[400],
              child: const Text("bloc 패턴"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const BlocDisplayWidget();
                }));
              },
            ),
          ),
          Center(
            // ignore: deprecated_member_use
            child: FlatButton(
              color: Colors.grey[400],
              child: const Text("기본 stateful"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const PlusStatefulDisplayWidget();
                }));
              },
            ),
          ),
        ],
      ),
    ));
  }
}
