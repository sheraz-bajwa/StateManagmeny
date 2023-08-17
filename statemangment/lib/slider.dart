import 'dart:async';

import 'package:flutter/material.dart';

class Slider extends StatefulWidget {
  const Slider({super.key, required String title});

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  int count = 0;

  double value = 0;
  double value1 = 0;
  final now = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      //print(count);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(now.toString()),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(onPressed: _counter),
    );
  }
}
