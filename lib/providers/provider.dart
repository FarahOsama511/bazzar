import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Providermodel extends ChangeNotifier {
  String? _username, _email, _Image;
  int? _mobilenumber;
  int quantity = 0;
  set username(String? username) {
    _username = username;
    notifyListeners();
  }

  String? get username => _username;

  set email(String? email) {
    _email = email;
    notifyListeners();
  }

  String? get email => _email;
  set Image(String? Image) {
    _Image = Image;
    notifyListeners();
  }

  String? get Image => _Image;
  set mobilenumber(int? mobilenumber) {
    _mobilenumber = mobilenumber;
    notifyListeners();
  }

  int? get mobilenumber => _mobilenumber;

  void Incrementquantity() {
    if (quantity > 0) {
      quantity--;
      notifyListeners();
    }
  }

  void decrementquantity() {
    if (quantity >= 0) {
      quantity++;
      notifyListeners();
    }
  }
}
