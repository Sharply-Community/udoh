// ignore_for_file: must_be_immutable

part of 'acceptedpost_cubit.dart';

abstract class AcceptedpostState extends Equatable {
  const AcceptedpostState();

  @override
  List<Object> get props => [];
  get acceptedpost => true;
}

class AcceptedpostInitial extends AcceptedpostState {}

class AcceptedPost extends AcceptedpostState {
  @override
  bool acceptedpost;
  AcceptedPost({
    required this.acceptedpost,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AcceptedPost && other.acceptedpost == acceptedpost;
  }

  @override
  int get hashCode => acceptedpost.hashCode;
}
