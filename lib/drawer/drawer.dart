import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search/provider/provider.dart';
import 'package:search/sazlamalar/sazlamalar.dart';

import '../Favorite.dart';
import '../home_page.dart';
import '../oyunly_sozlik.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = Provider.of<CartShoppingprovider>(context).name;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            decoration: const BoxDecoration(
                color: Color(0xFFD81B60),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                )),
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 20),
              child: Text('$name'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Esasy Sahypa'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          Divider(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.text_snippet),
            title: const Text('Oyunly Sozlik'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OyunlySozlik()));
            },
          ),
          ListTile(
            leading: Stack(clipBehavior: Clip.none, children: [
              IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Favorite(),
                      )),
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.pink.shade500,
                  )),
              Positioned(
                top: 1,
                right: 30,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    '${Provider.of<CartShoppingprovider>(context).card.length}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
            title: const Text('Halanlarym'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Favorite()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Sazlamalar'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Sazlamalar()));
            },
          ),
        ],
      ),
    );
  }
}
