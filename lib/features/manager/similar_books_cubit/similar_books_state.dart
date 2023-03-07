
import 'package:equatable/equatable.dart';

import '../../screens/Home/data/models/book_model/book_model.dart';

abstract class SimilarBooksState extends Equatable{
  const SimilarBooksState();

  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksLoading extends SimilarBooksState {}
class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;
  const SimilarBooksFailure(this.errMessage);
}
class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;
  const SimilarBooksSuccess(this.books);
}