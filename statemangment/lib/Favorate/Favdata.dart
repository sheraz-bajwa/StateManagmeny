import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangment/Provider/favorateItemProvider.dart';
import 'package:statemangment/Favorate/selectedItem.dart';

class Fav extends StatefulWidget {
  const Fav({super.key});

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorate Methood'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SelectedItem()));
              },
              icon: Icon(
                Icons.favorite,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 1000,
                itemBuilder: (context, index) {
                  return Consumer<FavItemProvider>(
                    builder: ((context, value, child) {
                      return ListTile(
                          onTap: () {
                            if (value.selectedItem.contains(index)) {
                              value.RemoveItem(index);
                            } else {
                              value.addItem(index);
                            }
                          },
                          title: Text(
                            'data' + index.toString(),
                          ),
                          trailing: Icon(
                            value.selectedItem.contains(index)
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                          ));
                    }),
                  );
                }),
          )
        ],
      ),
    );
  }
}
