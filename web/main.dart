import 'package:polymer/polymer.dart';
import 'dart:html';
 
void main() {
  initPolymer().run(() {
    Polymer.onReady.then((_) {
      
      
    });
  });
  
  querySelector('#splash').hidden = true;
  querySelector('#app').hidden = false;
  
}

