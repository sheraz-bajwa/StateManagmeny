import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangment/multiprovider.dart';

class Provider1 extends StatefulWidget {
  const Provider1({
    super.key,
  });

  @override
  State<Provider1> createState() => _Provider1State();
}

class _Provider1State extends State<Provider1> {
  int count = 0;
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
    final provider = Provider.of<Multipro>(context, listen: false);
    print('hello');

    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Slider(
                max: 1,
                min: 0,
                value: provider.value,
                onChanged: (val) {
                  provider.setvalue(val);
                  //value = val;
                }),

            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 200,
                  color: Colors.amber.shade400.withOpacity(provider.value),
                )),
                Expanded(
                    child: Container(
                  height: 200,
                  color: Colors.blueGrey.withOpacity(provider.value),
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
