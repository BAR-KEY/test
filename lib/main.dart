import 'package:flutter/material.dart';
import 'package:test/config/palette.dart';
import 'package:test/pages/todo.dart';
import '/pages/timer.dart';
import '/pages/stream.dart';
import '/config/style.dart' as style;

void main() {
  runApp(MaterialApp(
      title: 'flutter portfolio', theme: style.theme, home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이것저것 작은 기능 개발'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text(
                '목차',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              decoration: BoxDecoration(color: Palette.mainColor2),
            ),
            ListTile(
              title: const Text('타이머'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Timer(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('todo list'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TodoList(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Test 3'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (conetxt) => const Stream()));
          },
          child: const Text('Stream')),
    );
  }
}
