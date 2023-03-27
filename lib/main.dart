// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:search/provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:search/theme_date.dart';

import 'home_page.dart';
import 'sozler.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

const MaterialColor kPrimaryColor = const MaterialColor(
  0xFFF50067,
  const <int, Color>{
    50: const Color(0xFFF50067),
    100: const Color(0xFFF50067),
    200: const Color(0xFFF50067),
    300: const Color(0xFFF50067),
    400: const Color(0xFFF50067),
    500: const Color(0xFFF50067),
    600: const Color(0xFFF50067),
    700: const Color(0xFFF50067),
    800: const Color(0xFFF50067),
    900: const Color(0xFFF50067),
  },
);

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('favorites');
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Sozler(),
      ),
      ChangeNotifierProvider(
        create: (context) => ThemeColorDate(),
      ),
      ChangeNotifierProvider(
        create: (context) => CartShoppingprovider(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Sozler(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeColorDate>(context).themeColor,
        // theme: ThemeData(
        //   primarySwatch: kPrimaryColor,

        //   /// '#FF50067'.toColor(),
        //   accentColor: Colors.deepOrange,
        //   fontFamily: 'Lato',
        // ),
        home: HomePage(),
        // routes: {
        //   SozDetail.routeName: (ctx) => SozDetail(),
        // },
        builder: (context, child) {
          return MediaQuery(
            child: child!,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.5),
          );
        },
      ),
    );
  }
}
