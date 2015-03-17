import 'package:polymer/polymer.dart';

@CustomTag('pablosaraiva-book')
class PablosaraivaBook extends PolymerElement {
  @published
  String titulo;
  
  @published
  String autor;
  
  @published
  String fim;
  
  @published
  String capa;
  
  PablosaraivaBook.created() : super.created();
    
  @override
  void attached() {
    super.attached();
  }
  
  @override
  void detached() {
    super.detached();
  }
}
