import 'package:polymer/polymer.dart';

@CustomTag('pablosaraiva-menu')
class PablosaraivaMenu extends PolymerElement {
  @reflectable 
  var _page = 'blog';
  
  get page => _page;
  
  set page(val) {
    print(_page);
    print(val);
    _page = val;
  }

  PablosaraivaMenu.created() : super.created();
  
  @override
  void attached() {
    super.attached();
  }
  
  @override
  void detached() {
    super.detached();
  }
}
