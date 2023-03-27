import 'package:flutter/cupertino.dart';

class CartShoppingprovider extends ChangeNotifier {
  List card = [];
  cardvalui(_sozler) {
    card.add(_sozler);
    notifyListeners();
  }

  checkIFProductToCard(productID) {
    if (card.length > 0) {
      var result = card.where((element) => element.id == productID);
      if (result.isEmpty) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  deleteproductfromCart(productId) {
    card.removeWhere((element) => element.id == productId);
    //print(card.toString());
    notifyListeners();
  }


   ///   Sazlama at gosmak un
  String name = "Ulanyjyn ady yok";

  void nameAdd(String ady){
    name=ady;
    notifyListeners();
  }

}
