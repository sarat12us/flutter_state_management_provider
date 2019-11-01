import 'package:flutter/material.dart';

class Scale with ChangeNotifier {
  double _scale;

  Scale(this._scale);

  getScale() => _scale;
  setScale(double scale) => _scale = scale;

  void expand() {
    if (_scale != 7.0) _scale = _scale + 1.0;
    notifyListeners();
  }

  void shrink() {
    if (_scale != 1.0) _scale = _scale - 1.0;
    notifyListeners();
  }
}
