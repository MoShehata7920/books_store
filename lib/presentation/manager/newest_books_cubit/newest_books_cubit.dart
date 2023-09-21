import 'package:bloc/bloc.dart';
import 'package:books_store/data/models/book_model/book_model.dart';
import 'package:books_store/data/repository/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewestBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
