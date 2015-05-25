import 'package:polymer/polymer.dart';
import 'package:core_elements/core_drawer_panel.dart';
import 'package:route_hierarchical/client.dart';


@CustomTag('pablosaraiva-app')
class PablosaraivaApp extends PolymerElement {
  @observable
  String page = "blog";
  
  PablosaraivaApp.created() : super.created();
  var router = new Router(useFragment: true);

  @override
  void ready() {
    super.ready();
    CoreDrawerPanel panel = shadowRoot.querySelector('#panel');
    panel.responsiveWidth = "800pt";
    panel.onClick.listen((e) => panel.togglePanel());
    
    router.root
        ..addRoute(name: 'blog', defaultRoute: true, path: 'blog/:postId', enter: showBlog)
        ..addRoute(name: 'leitura', path: 'leitura', enter: showLeitura)
        ..addRoute(name: 'sobre', path: 'sobre', enter: showSobre);
    router.listen();
        
  }
  
  void showBlog(RouteEvent e) {
    page = "blog";
    if (e.parameters.isNotEmpty) {
//      var postId = e.parameters['postId'];
    } else {
    }
  }

  void showLeitura(RouteEvent e) {
    page = "leitura";
  }

  void showSobre(RouteEvent e) {
    page = "sobre";
  }

}
