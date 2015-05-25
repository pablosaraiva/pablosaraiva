import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:route_hierarchical/client.dart';


main() => initPolymer();

void showBlog(RouteEvent e) {
  print("showBlog");
  if (e.parameters.isNotEmpty) {
    var postId = e.parameters['postId'];
    print("Post id: " + postId);
  } else {
    print("Last post");
  }
}

void showLeitura(RouteEvent e) {
  print("showLeitura");
}

void showSobre(RouteEvent e) {
  print("showSobre");
}


@initMethod
realMain() {
  var router = new Router(useFragment: true);
  
  router.root
      ..addRoute(name: 'blog', defaultRoute: true, path: 'blog/:postId', enter: showBlog)
      ..addRoute(name: 'leitura', path: 'leitura', enter: showLeitura)
      ..addRoute(name: 'sobre', path: 'sobre', enter: showSobre);
  router.listen();
  
  Polymer.onReady.then((_) {
  });    
  
  querySelector('#splash').hidden = true;
  querySelector('#app').hidden = false;
}
