import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:search/barada.dart';
import 'package:search/oyun_soz/oyun_ui.dart';

import 'provider/provider.dart';
import 'soz_details.dart';
import 'sozler.dart';
import 'drawer/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  String _searchText = "";

  @override
  void initState() {
    _controller.addListener(
      () {
        setState(() {
          _searchText = _controller.text;
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //bool favorite = true;

  @override
  Widget build(BuildContext context) {
    final favorite = Provider.of<CartShoppingprovider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade600,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              size: 35,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
          ),
        ),
        elevation: 0,
        title: Text('Dictionary'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Barada()));
            },
            icon: Icon(
              Icons.info_outline_rounded,
              size: 35,
            ),
          ),
        ],
        bottom: PreferredSize(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 10, bottom: 20, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35)),
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        // hoverColor: Colors.green,
                        prefixIcon: Icon(Icons.search,
                            size: 35, color: Colors.grey.shade600),
                        suffixIcon: Icon(Icons.mic_none_outlined,
                            size: 35, color: Colors.grey.shade600),
                        hintText: "Soz Gozlan..",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(
                            width: 0.0,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        Provider.of<Sozler>(context, listen: false)
                            .changeSearchString(value);
                      },
                      //keyboardType: TextInputType.emailAddress,
                      // style:  TextStyle(
                      //   fontFamily: "Poppins",
                      // ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
            preferredSize: Size.fromHeight(105.0)),
      ),
      drawer: AppDrawer(),
      body: ValueListenableBuilder(
          valueListenable: Hive.box('favorites').listenable(),
          builder: (context, box, child) {
            return Container(
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
                              topLeft: Radius.circular(0.0),
                              topRight: const Radius.circular(25.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          // ValueListenableBuilder(
                          //   valueListenable: Hive.box,('favorites').listenable(),
                          Consumer<Sozler>(builder: (
                            context,
                            sozMaglumat,
                            child,
                          ) {
                            //print(sozMaglumat.sozler.toString());
                            return Expanded(
                                child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: sozMaglumat.sozler.length,
                                    itemBuilder: (context, i) {
                                      //final isFavorite = box.get(i) != null;
                                      return ChangeNotifierProvider.value(
                                        // create: (c) => products[i],
                                        value: Sozler(),
                                        child: InkWell(
                                          child: Card(
                                            elevation: 0.1,
                                            child: ListTile(
                                                title: Text(
                                                    "${i + 1}     ${sozMaglumat.sozler[i].eng}"),
                                                trailing: favorite
                                                        .checkIFProductToCard(
                                                            sozMaglumat
                                                                .sozler[i].id)
                                                    ? GestureDetector(
                                                        child: Icon(
                                                          Icons
                                                              .favorite_rounded,
                                                          color: Colors
                                                              .pink.shade500,
                                                          size: 40,
                                                        ),
                                                        onTap: () {
                                                          print('delete');
                                                          Provider.of<CartShoppingprovider>(
                                                                  context,
                                                                  listen: false)
                                                              .deleteproductfromCart(
                                                                  sozMaglumat
                                                                      .sozler[i]
                                                                      .id);
                                                        })
                                                    : GestureDetector(
                                                        child: Icon(
                                                          Icons
                                                              .favorite_outline,
                                                          color: Colors
                                                              .pink.shade500,
                                                          size: 40,
                                                        ),
                                                        onTap: () async {
                                                          Provider.of<CartShoppingprovider>(
                                                                  context,
                                                                  listen: false)
                                                              .cardvalui(
                                                                  sozMaglumat
                                                                      .sozler[i]);
                                                          //await box.put(i, sozMaglumat);
                                                        },
                                                      ),
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              SozDetail(
                                                                sozMaglumat
                                                                    .sozler[i]
                                                                    .eng,
                                                                sozMaglumat
                                                                    .sozler[i]
                                                                    .tkm,
                                                                i,
                                                                sozMaglumat
                                                                    .sozler[i]
                                                                    .defnition,
                                                              )));
                                                }),
                                          ),
                                        ),
                                      );
                                    }));
                          }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
