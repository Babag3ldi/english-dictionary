import 'package:flutter/material.dart';

class Barada extends StatelessWidget {
  const Barada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          "Programma barada",
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: Width * 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Height*2,),
              Text("Programmany taýýarlanlar:", style: TextStyle(fontSize: 18),),
              SizedBox(height: Height*2,),
              Row(
                children: [
                  Container(
                    width: Width * 16,
                  height: Height * 8,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.person, size: 40,)),
                  Text("   Agajumaýewa Güljan ", style: TextStyle(fontSize: 18),)
                ],
              ),
              SizedBox(height: Height*2,),
              Row(
                children: [
                  Container(
                    width: Width * 16,
                  height: Height * 8,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.person, size: 40,)),
                  Text("   Toýgulyýewa Oraztäç ", style: TextStyle(fontSize: 18),)
                ],
              ),
              SizedBox(height: Height*2,),
              Text("Türkmenistanyň Oguz han adyndaky Inžiner-tehnologiýalar uniwerstediniň talyplary", style: TextStyle(fontSize: 16),),
              SizedBox(height: Height*2,),
              Row(
                children: [
                  Container(
                    width: Width * 16,
                  height: Height * 8,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.phone_android, size: 40,)),
                  Text("   Wersiýasy   1.3 ", style: TextStyle(fontSize: 18),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
