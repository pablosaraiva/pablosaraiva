import 'package:polymer/polymer.dart';
import 'dart:html';
 

main() => initPolymer();

@initMethod
realMain() {
  Polymer.onReady.then((_) {
    
    
  });    
  
  querySelector('#splash').hidden = true;
  querySelector('#app').hidden = false;
}
