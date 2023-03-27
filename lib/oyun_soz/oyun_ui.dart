import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'oyun_sozler.dart';

class OyunUi extends StatelessWidget {
  // final String eng;
  // final String tkm;

  //  OyunUi({Key? key, required this.eng, required this.tkm}) : super(key: key);

  //Map<String, dynamic> oyunDen = ;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oyun"),
      ),
      body:
          // Consumer<OyunSozler>(builder: (
          //               context,
          //               sozMaglumat,
          //               child,
          //             ) {
          // return
          Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 35),
                child: GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 150,
                    child: Center(child: Text("{eng}")),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 35),
                child: GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 150,
                    child: Center(child: Text("tkm")),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 35),
                child: GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 150,
                    child: Center(child: Text("Hello")),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 35),
                child: GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 150,
                    child: Center(child: Text("Salam")),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 35),
                child: GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 150,
                    child: Center(child: Text("Hello")),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 35),
                child: GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 150,
                    child: Center(child: Text("Salam")),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 35),
                child: GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 150,
                    child: Center(child: Text("Hello")),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 35),
                child: GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 150,
                    child: Center(child: Text("Salam")),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 35),
                child: GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 150,
                    child: Center(child: Text("Hello")),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 35),
                child: GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 150,
                    child: Center(child: Text("Salam")),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
        ],

        ///); },
      ),
    );
  }
}
