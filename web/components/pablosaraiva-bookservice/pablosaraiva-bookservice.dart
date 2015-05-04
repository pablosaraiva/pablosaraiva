import 'package:polymer/polymer.dart';

@CustomTag('pablosaraiva-bookservice')
class PablosaraivaBookService extends PolymerElement {
  @published
  String booklist;
  
  @override
  PablosaraivaBookService.created() : super.created() {
    print("construtor");
    booklist = '[  {    "titulo": "Learning Neo4j",    "autor":"Rik Van Bruggen",    "fim": "04/2015",    "capa":"learningneo4j.jpg"  }  ,  {    "titulo": "Graph Databases",    "autor":"Ian Robinson, Jim Webber & Emil Eifrem",    "fim": "04/2015",    "capa":"graphdatabases.jpg"  }]';
  }
  
  set books(var books) {
    print('bookservice');
    print('set books ');
    print(books);
    booklist = books;
  }
  
  get books {
    print('bookservice');
    print('get books ');
    print(booklist);
    return booklist;
  }  

}
  
