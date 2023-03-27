import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search/provider/provider.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    final favorite = Provider.of<CartShoppingprovider>(context);
    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text('Halanlarym'),
      ),
      body: ListView.builder(
        itemCount: favorite.card.length,
        itemBuilder: (BuildContext context, int index) => Card(
          elevation: 1,
          //margin: EdgeInsets.only(top: index == 0 ? 25 : 15),
          child: ListTile(
            leading: Text(
                '${favorite.card[index].eng}'),
            // title: Text(
            //     '${favorite.card[index].tkm}'),
            // subtitle: Text(
            //     '${favorite.card[index].defnition}'),
          ),
        ),
      ),
    );
  }
}
