import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'drawer/drawer.dart';
import 'oyun/animal_oyun/animal_screen.dart';
import 'oyun_soz/oyun_ui.dart';

class OyunlySozlik extends StatelessWidget {
  const OyunlySozlik({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;
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
                 child: ListViewBuild(context),
               ),
               ),
                  ],
                 ),
      ),
      
    );
  }

  ListView ListViewBuild(BuildContext context) {
    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;
    return ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/anim.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => QuestionWidget()));
                        },
                       ),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/antonim.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunUi()));
                        },
                       ),
                     ),
                  ],
                  ),
                  Row(children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/fruit.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/home.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                  ],
                  ),
                  Row(children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/food.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                         height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/num.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                  ],
                  ),
                  Row(children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/nature.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/hunar.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                  ],
                  ),
                  Row(children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/teb.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/build.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                  ],
                  ),
                  Row(children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/ulag.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 17),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/color.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                  ],
                  ),
                  Row(children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 170),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/job.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(left: 17.0, bottom: 170),
                       child: GestureDetector(
                         child: Container(
                          //color: Colors.red,
                          height: Height * 35,
                          width: Width*42,
                          child: Card(
                            elevation: 3,
                            child: Image.asset("assets/adj.jpg")
                          )
                        ),
                        onTap: () {
                          Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => OyunlySozlik()));
                        },
                       ),
                     ),
                  ],
                  ),
                  ],
                  ),
                ]
               );
  }
}