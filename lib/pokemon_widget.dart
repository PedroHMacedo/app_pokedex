import 'package:flutter/material.dart';
import 'package:pokedex/pokemon.dart';

import 'detalhepokemon.dart';

class PokemonWidget extends StatelessWidget {
  final Pokemon item;

  const PokemonWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(8),
        child: ListTile(
            contentPadding: EdgeInsets.all(5),
            title: Text(item.name),
            leading: Image.network(item.thumbnailImage),
                trailing: Text(
                  '#' + item.number,
                  style: TextStyle(color: Colors.grey),
                ), onTap: () {
              redirectToNewPage(context, item);
            }));
  }

  void redirectToNewPage(context, item) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Detalhepokemon(item: item),
    ));
  }
}
