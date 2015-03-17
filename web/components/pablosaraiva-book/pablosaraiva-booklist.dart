import 'package:polymer/polymer.dart';

@CustomTag('pablosaraiva-booklist')
class PablosaraivaBookList extends PolymerElement {
  @published
  var booklist;
  
  PablosaraivaBookList.created() : super.created();

  @override
  void attached() {
    super.attached();
  }

  @override
  void detached() {
    super.detached();
  }
  
  set books(var books) {
    print('set books ');
    print(books);
    booklist = books;
  }
  
  get books {
    print('get books ');
    print(booklist);
    return booklist;
  }
}
  
