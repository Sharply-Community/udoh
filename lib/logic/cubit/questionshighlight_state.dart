// ignore_for_file: must_be_immutable

part of 'questionshighlight_cubit.dart';

abstract class QuestionshighlightState extends Equatable {
  const QuestionshighlightState();

  @override
  List<Object> get props => [];
  get question => true;
}

class QuestionshighlightInitial extends QuestionshighlightState {}

class Question extends QuestionshighlightState {
  @override
  bool question;
  Question({
    required this.question,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Question && other.question == question;
  }

  @override
  int get hashCode => question.hashCode;
}
