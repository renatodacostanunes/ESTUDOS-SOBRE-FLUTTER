import '../db/virtual_db.dart';
import '../models/book_mode.dart';
import '../repositories/book_implements.dart';

class HomeController {
  final BookRepository _bookRepo = BookRepository(VirtualDB());

  Future<List<Book>> getAllBooks() {
    return _bookRepo.getAll();
  }

  Future<void> addBook(Book book) {
    return _bookRepo.insert(book);
  }

  Future<void> removeBook(int id) {
    return _bookRepo.delete(id);
  }
}
