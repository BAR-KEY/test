import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/pages/provider/count_home_widget.dart';
import 'package:test/pages/provider/count_provider.dart';

// ignore: must_be_immutable
class ProviderHome extends StatelessWidget {
  ProviderHome({Key? key}) : super(key: key);
  late CountProvider _countProvider;

  @override
  Widget build(BuildContext context) {
    Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('provider')),
      body: const CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              _countProvider.add();
            },
          ),
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              _countProvider.remove();
            },
          ),
        ],
      ),
    );
  }
}
