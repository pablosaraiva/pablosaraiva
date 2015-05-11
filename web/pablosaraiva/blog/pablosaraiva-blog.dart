import 'package:polymer/polymer.dart';
import 'package:markdown/markdown.dart';

@CustomTag('pablosaraiva-blog')
class PablosaraivaBlog extends PolymerElement {
  PablosaraivaBlog.created() : super.created();
    
  @override
  void attached() {
    super.attached();
    String post = """
I wanted to have a personal web page AND I wanted to learn Polymer + Dart.

So I decided to do both together. As I am bulding my webpage using Poylmer and Dart I am also learning it.

This is a first blog post and a **markdown** test.
""";
    
    shadowRoot.querySelector("#post").innerHtml = markdownToHtml(post);
  }
  
  @override
  void detached() {
    super.detached();
  }
}
