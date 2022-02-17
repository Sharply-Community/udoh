import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'posts_state.dart';

enum LikedPost { like, dislike }

class PostsCubit extends Cubit<PostsState> {
  PostsCubit() : super(PostsInitial());

  void likedPost(LikedPost posts) {
    emit(LikePost(posts));
  }
}
