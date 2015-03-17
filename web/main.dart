import 'dart:html';
import 'package:polymer/polymer.dart';

void main() {
  initPolymer().run(() {
    Polymer.onReady.then((_) {
    });
  });
  
  querySelector('#splash').hidden = true;
  querySelector('#content').hidden = false;
}

