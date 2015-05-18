import 'package:polymer/polymer.dart';
import 'package:core_elements/core_drawer_panel.dart';

@CustomTag('pablosaraiva-app')
class PablosaraivaApp extends PolymerElement {
  @observable
  String page = "blog";
  
  PablosaraivaApp.created() : super.created();

  @override
  void ready() {
    super.ready();
    CoreDrawerPanel panel = shadowRoot.querySelector('#panel');
    panel.responsiveWidth = "800pt";
    panel.onClick.listen((e) => panel.togglePanel());   
  }
}
