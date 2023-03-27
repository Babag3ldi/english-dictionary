import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search/provider/provider.dart';
import 'package:search/theme_date.dart';

class Sazlamalar extends StatefulWidget {
  const Sazlamalar({Key? key}) : super(key: key);

  @override
  State<Sazlamalar> createState() => _SazlamalarState();
}

class _SazlamalarState extends State<Sazlamalar> {
  parolBarlaCancel(int i) {
    Navigator.of(context).pop(false);
  }

  @override
  Widget build(BuildContext context) {
    Function nameAdd =
        Provider.of<CartShoppingprovider>(context, listen: false).nameAdd;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sazlamalar"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (input) {
                nameAdd(input);
              },
            ),
          ),
          ElevatedButton(
              onPressed: () => parolBarlaCancel(0), child: Text("ok")),
          SwitchListTile(
            title: Provider.of<ThemeColorDate>(context).isGreen ? Text("Yasyl Tema") : Text("Gyzyl Tema"),
              value:  Provider.of<ThemeColorDate>(context).isGreen,
              onChanged: (_) {
                Provider.of<ThemeColorDate>(context, listen: false)
                    .toggleTheme();
              })
        ],
      ),
    );
  }
}
