import 'owner.dart';
import 'publisher.dart';
import 'subject.dart';

/// Classe [Book]
///
/// Ao ser cadastrado, o livro recebe um id único no banco de dados.
/// Para o título [title], considerar cadastro com o artigo (o, a, os, as),
/// caso exista, posto ao final do título, separado por vírgula (,).
/// Ex.: Crônicas de Nárnia, As.
///
/// O [isbn] é um número único de 10 ou 13 dígitos para cada livro.

class Book {
  int? id;
  String title;
  String author;
  int isbn;
  Owner owner;
  bool lended;
  Publisher? publisher;
  List<Subject>? subjects;
  int? pages;

  Book({
    this.id,
    required this.title,
    required this.author,
    required this.isbn,
    required this.owner,
    required this.lended,
    this.publisher,
    this.subjects,
    this.pages,
  });
}
