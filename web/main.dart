import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:core_elements/core_drawer_panel.dart';


void abreMenu() {
  CoreDrawerPanel e = querySelector('#drawerPanel') as CoreDrawerPanel;
  e.togglePanel();
}

void main() {
  
  initPolymer().run(() {
    Polymer.onReady.then((_) {
      querySelector('#navicon').onClick.listen((event) => abreMenu());
    });
  });
  
  querySelector('#splash').hidden = true;
  querySelector('#content').hidden = false;
  
}

