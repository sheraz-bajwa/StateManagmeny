import 'package:flutter/material.dart';
import 'package:statemangment/Favorate/Favdata.dart';
import 'package:statemangment/Light&DartMode.dart/DartTheme.dart';
import 'package:statemangment/Provider/favorateItemProvider.dart';
import 'package:statemangment/Provider/SliderProvider.dart';
import 'package:statemangment/Provider/themeProvider.dart';
import 'package:statemangment/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Multipro()),
        ChangeNotifierProvider(create: (_) => FavItemProvider()),
        ChangeNotifierProvider(create: (_) => themeChanger()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DarKTheme(),
      ),
    );
  }
}
