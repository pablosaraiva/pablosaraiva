import 'package:polymer/polymer.dart';
import 'dart:convert';

@CustomTag('pablosaraiva-booklist')
class PablosaraivaBookList extends PolymerElement {
  @published
  var booklist;
  
  @override
  PablosaraivaBookList.created() : super.created() {
    String listAsJson = '[  {    "titulo": "Learning Neo4j",    "autor":"Rik Van Bruggen",    "fim": "04/2015",    "capa":"learningneo4j.jpg"  }  ,  {    "titulo": "Graph Databases",    "autor":"Ian Robinson, Jim Webber & Emil Eifrem",    "fim": "04/2015",    "capa":"graphdatabases.jpg"  }]';
    booklist = JSON.decode(listAsJson);
    print(booklist[0]);
  }

  @override
  void attached() {
    super.attached();
  }

  @override
  void detached() {
    super.detached();
  }
  
  set books(var books) {
    print('booklist');
    print('set books ');
    print(books);
    booklist = books;
  }
  
  get books {
    print('booklist');
    print('get books ');
    print(booklist);
    return booklist;
  }
}
  
