// ignore_for_file: must_be_immutable

part of 'commentcubit_cubit.dart';

abstract class CommentcubitState extends Equatable {
  const CommentcubitState();

  @override
  List<Object> get props => [];
  get comment => true;
}

class CommentcubitInitial extends CommentcubitState {}

class Comment extends CommentcubitState {
  @override
  bool comment;
  Comment({required this.comment});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Comment && other.comment == comment;
  }

  @override
  int get hashCode => comment.hashCode;
}
