import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newpost_state.dart';

class NewpostCubit extends Cubit<NewpostState> {
  NewpostCubit() : super(NewpostInitial());

  newPost(bool newpost) {
    emit(NewPost(newpost: true));
  }
}
