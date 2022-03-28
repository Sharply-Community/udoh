// ignore_for_file: must_be_immutable

part of 'newanswer_cubit.dart';

abstract class NewanswerState extends Equatable {
  const NewanswerState();

  @override
  List<Object> get props => [];
  get newAnswer => true;
}

class NewanswerInitial extends NewanswerState {}

class NewAnswer extends NewanswerState {
  @override
  bool newAnswer;
  NewAnswer({
    required this.newAnswer,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewAnswer && other.newAnswer == newAnswer;
  }

  @override
  int get hashCode => newAnswer.hashCode;
}
