import 'dart:async';

import 'package:flutter/material.dart';

class Provider extends StatefulWidget {
  const Provider({super.key, required String title});

  @override
  State<Provider> createState() => _ProviderState();
}

class _ProviderState extends State<Provider> {
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
      print(count);
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
            Slider(
                max: 1,
                min: 0,
                value: value,
                onChanged: (val) {
                  value = val;
                  setState(() {});
                }),

            Row(
              children: [
                GestureDetector(
                  child: Expanded(
                      child: Container(
                    height: 200,
                    color: Colors.amber.shade400.withOpacity(value),
                  )),
                ),
                Expanded(
                    child: Container(
                  height: 200,
                  color: Colors.blueGrey.withOpacity(value),
                )),
              ],
            ),

            // Text(now.toString()),
            // Text(
            //   count.toString(),
            //   style: Theme.of(context).textTheme.headlineMedium,
            // )
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(onPressed: _counter),
    );
  }
}
