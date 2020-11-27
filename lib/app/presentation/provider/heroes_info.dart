import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {
  String _heroe = 'Doctor Strange';

  get heroe {
    return _heroe;
  }

  set heroe(String nombre) {
    this._heroe = nombre;

    notifyListeners();
  }
}
