import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'commentcubit_state.dart';

class CommentcubitCubit extends Cubit<CommentcubitState> {
  CommentcubitCubit() : super(CommentcubitInitial());

  commentToggle(bool comment) {
    emit(Comment(comment: comment));
  }
}
