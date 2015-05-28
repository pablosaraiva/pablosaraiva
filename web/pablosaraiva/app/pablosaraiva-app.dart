import 'package:polymer/polymer.dart';
import 'package:core_elements/core_drawer_panel.dart';
import 'package:core_elements/core_header_panel.dart';

import 'package:route_hierarchical/client.dart';
import 'dart:html';


@CustomTag('pablosaraiva-app')
class PablosaraivaApp extends PolymerElement {
  @observable
  String page = "blog";
  
  PablosaraivaApp.created() : super.created();
  var router = new Router(useFragment: true);

  CoreDrawerPanel panel;
  
  @override
  void ready() {
    super.ready();
    panel = shadowRoot.querySelector('#panel');
    panel.responsiveWidth = "800pt";
    panel.onClick.listen((e) => panel.togglePanel());
    
    router.root
        ..addRoute(name: 'blog', defaultRoute: true, path: 'blog/:postId', enter: showBlog)
        ..addRoute(name: 'readinglist', path: 'readinglist', enter: showLeitura)
        ..addRoute(name: 'about', path: 'about', enter: showSobre);
    router.listen();
        
  }
  
  void showBlog(RouteEvent e) {
    scrollToPageTop();
    page = "blog";
    if (e.parameters.isNotEmpty) {
//      var postId = e.parameters['postId'];
    } else {
    }
  }

  void showLeitura(RouteEvent e) {
    scrollToPageTop();
    page = "readinglist";
  }

  void showSobre(RouteEvent e) {
    scrollToPageTop();
    page = "about";
  }
  
  void scrollToPageTop() {
    CoreHeaderPanel mainHeaderPanel = shadowRoot.querySelector('#mainHeaderPanel');
    mainHeaderPanel.scroller.scrollTop = 0;
  }
}
