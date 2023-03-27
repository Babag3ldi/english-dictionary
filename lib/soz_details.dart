import 'package:flutter/material.dart';

class SozDetail extends StatelessWidget {
  final String eng;
  final String tkm;
  final String defnition;

  SozDetail(this.eng, this.tkm, this.index, this.defnition);
  static const routeName = '/product-detail';

  //ProductDetailScreen(String title);

  final int index;

  // ignore: use_key_in_widget_constructors
  //const SozDetail(this.index);

  @override
  Widget build(BuildContext context) {
    //final idd = ModalRoute.of(context)!.settings.arguments as String;
    //final loadedSoz = Provider.of<Sozlerk>(context).items.firstWhere((soz) => soz.id == idd);
    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
          ),
        ),
        elevation: 0,
        title: Text("$eng"),
      ),
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
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(0.0),
                        topRight: const Radius.circular(25.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 10),
                        child: Icon(
                          Icons.volume_up_outlined,
                          size: 35,
                        ),
                      ),
                      Center(
                          child: Container(
                            width: Width* 70,
                              child: Text(
                        "EN:    $eng",
                        style: TextStyle(fontSize: 20),
                      )))
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "TM: $tkm",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Defnition: \n $defnition",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
