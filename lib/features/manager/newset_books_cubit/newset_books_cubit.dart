import 'package:booklyapp/features/manager/featured_books_cubit/featured_books_state.dart';
import 'package:booklyapp/features/manager/newset_books_cubit/newset_books_state.dart';
import 'package:booklyapp/features/screens/Home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewSetBooksCubit extends Cubit<NewsetBooksState>{
  NewSetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewSetBooks()async{
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure)
    {
      emit(NewsetBooksFailure(failure.errMessage));
    }, (books){
      emit(NewsetBooksSuccess(books));
    });
  }
}