import 'package:flutter/material.dart';

import '../drawer/drawer.dart';
import 'animal_oyun/animal_screen.dart';

class AnimalOyun extends StatelessWidget {
  const AnimalOyun({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
             borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
              ),
            ),
            title: Text("Oyunly Sozluk"),
        elevation: 0,
      ),
      drawer: AppDrawer(),
       body: Container(
         height: double.infinity,
        width: double.infinity,
        color: Colors.pink.shade600,
          child: Stack(
             fit: StackFit.loose,
            children: [
            Positioned(
              top: 0,
               child: Container(
                height: 894,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(0.0),
                        topRight: const Radius.circular(25.0))),
                child: QuestionWidget()
               ),
               ),
                  ],
                 ),
      ),
    );
  }
}