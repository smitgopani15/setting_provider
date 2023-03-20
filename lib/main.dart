import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui/screen/home/provider/home_provider.dart';
import 'package:setting_ui/screen/home/view/asettingui_screen.dart';
import 'package:setting_ui/screen/home/view/isettingui_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: Platform.isAndroid ? isettingUI() : asettingUI(),
    ),
  );
}

Widget isettingUI() {
  return CupertinoApp(
    theme: CupertinoThemeData(
      brightness: Brightness.light,
    ),
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (p0) => IsettinguiScreen(),
    },
  );
}

Widget asettingUI() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => AsettinguiScreen(),
    },
  );
}
