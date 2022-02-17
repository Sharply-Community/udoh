import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'feelings_state.dart';

enum LikedPhoto { like, dislike }

class FeelingsCubit extends Cubit<FeelingsState> {
  FeelingsCubit() : super(FeelingsInitial());

  void likedPhoto(LikedPhoto feelings) {
    emit(LikePhoto(feelings));
  }
}
