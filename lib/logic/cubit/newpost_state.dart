// ignore_for_file: must_be_immutable

part of 'newpost_cubit.dart';

abstract class NewpostState extends Equatable {
  const NewpostState();

  @override
  List<Object> get props => [];
  get newpost => true;
}

class NewpostInitial extends NewpostState {}

class NewPost extends NewpostState {
  @override
  bool newpost;
  NewPost({
    required this.newpost,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewPost && other.newpost == newpost;
  }

  @override
  int get hashCode => newpost.hashCode;
}
