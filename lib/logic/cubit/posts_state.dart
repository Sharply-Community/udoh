part of 'posts_cubit.dart';

abstract class PostsState extends Equatable {
  const PostsState();

  @override
  List<Object> get props => [];
  get posts => null;
}

class PostsInitial extends PostsState {}

class LikePost extends PostsState {
  @override
  final LikedPost posts;

  const LikePost(this.posts);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LikePost && other.posts == posts;
  }

  @override
  int get hashCode => posts.hashCode;
}
