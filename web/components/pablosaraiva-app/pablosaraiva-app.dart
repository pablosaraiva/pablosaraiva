import 'package:polymer/polymer.dart';
import 'dart:html';
import 'dart:js';

@CustomTag('pablosaraiva-app')
class PablosaraivaApp extends PolymerElement {
  @observable
  String page = "leitura";
  
  PablosaraivaApp.created() : super.created();

  @override
  void ready() {
    super.ready();
//    shadowRoot.querySelector('#panel').onClick.listen((e) => clicaMenu()); 
  }
  
//  void clicaMenu() {
//    _js(x) => new JsObject.fromBrowserObject(x);
//    _js(querySelector('#panel')).callMethod('togglePanel');
//  }
  
}
