// ignore_for_file: must_be_immutable

part of 'newfollowers_cubit.dart';

abstract class NewfollowersState extends Equatable {
  const NewfollowersState();

  @override
  List<Object> get props => [];
  get newfollowers => true;
}

class NewfollowersInitial extends NewfollowersState {}

class NewFollowers extends NewfollowersState {
  @override
  bool newfollowers;
  NewFollowers({
    required this.newfollowers,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewFollowers && other.newfollowers == newfollowers;
  }

  @override
  int get hashCode => newfollowers.hashCode;
}
