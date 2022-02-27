import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:test/pages/provider/count_home_widget.dart';
import 'package:test/pages/provider/count_provider.dart';

// ignore: must_be_immutable
class ProviderHome extends StatelessWidget {
  const ProviderHome({Key? key}) : super(key: key);
  // late CountProvider _countProvider;

  Widget _navigationBody() {
    return Container();
  }

  Widget _bottomNavigationBarWidget() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movie")
      ],
      currentIndex: 0,
      selectedItemColor: Colors.red,
      onTap: (index) {
        // proivder navigation state;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('provider')),
      body: _navigationBody(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }
}

      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     IconButton(
      //       icon: const Icon(Icons.add),
      //       onPressed: () {
      //         _countProvider.add();
      //       },
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.remove),
      //       onPressed: () {
      //         _countProvider.remove();
      //       },
      //     ),
      //   ],
      // ),