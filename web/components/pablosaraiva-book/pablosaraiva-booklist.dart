import 'package:polymer/polymer.dart';
import 'dart:convert';
import 'dart:html';
import 'dart:async';

@CustomTag('pablosaraiva-booklist')
class PablosaraivaBookList extends PolymerElement with Observable {
  @observable
  var books = null;
  
  @override
  PablosaraivaBookList.created() : super.created() {
  }

  @override
  void attached() {
    super.attached();

    var path = '../data/books.json';
      Future future = HttpRequest.getString(path);
      future.then((contents){
        books = JSON.decode(contents);
    });    
  }

}
  
