import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangment/Provider/favorateItemProvider.dart';

class SelectedItem extends StatefulWidget {
  const SelectedItem({super.key});

  @override
  State<SelectedItem> createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {
  @override
  Widget build(BuildContext context) {
    final selectedProvider = Provider.of<FavItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Favorate Item'),
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
                itemCount: selectedProvider.selectedItem.length,
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
