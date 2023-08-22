import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangment/Provider/themeProvider.dart';

class DarKTheme extends StatefulWidget {
  const DarKTheme({super.key});

  @override
  State<DarKTheme> createState() => _DarKThemeState();
}

class _DarKThemeState extends State<DarKTheme> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Toggle the theme mode using the toggleThemeMode method
                ThemeData.dark();
              },
              child: Text('Toggle Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
