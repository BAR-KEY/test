import 'package:flutter/material.dart';
import '/pages/timer.dart';

void main() {
  runApp(MaterialApp(
      title: 'flutter portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이것저것 작은 기능 개발'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text(
                '목차',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            ListTile(
              title: const Text('타이머'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Timer(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Test 2'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Test 3'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
