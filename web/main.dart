import 'dart:js' show JsObject;
import 'dart:html';
import 'package:polymer/polymer.dart';
import './components/pablosaraiva-menubinding/pablosaraiva-menubinding.dart';
 
void main() {
  initPolymer().run(() {
    Polymer.onReady.then((_) {
      
      void clicaMenu() {
        _js(x) => new JsObject.fromBrowserObject(x);
        _js(querySelector('#content')).callMethod('togglePanel');
        
      }
      
      var template = querySelector("#app") as AutoBindingElement;
      var model = template.model = new PabloSaraivaMenuBinding(); 
      
    });
  });
  
  querySelector('#splash').hidden = true;
  querySelector('#app').hidden = false;
  
}

