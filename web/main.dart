import 'dart:js' show JsObject;
import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:core_elements/core_drawer_panel.dart';
 


void main() {
  initPolymer().run(() {
    Polymer.onReady.then((_) {
      void clicaMenu() {
        _js(x) => new JsObject.fromBrowserObject(x);
        _js(querySelector('#content')).callMethod('togglePanel');        
      }
      
      querySelector('#navicon').onClick.listen((event) => clicaMenu());
    });
  });
  
  querySelector('#splash').hidden = true;
  querySelector('#content').hidden = false;
  
}

