import 'package:flutter/material.dart';
import 'package:test/config/palette.dart';

final theme = ThemeData(
  appBarTheme: const AppBarTheme(
      color: Palette.mainColor,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
);
