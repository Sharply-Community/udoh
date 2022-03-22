part of 'answerhighlight_cubit.dart';

abstract class AnswerhighlightState extends Equatable {
  const AnswerhighlightState();

  @override
  List<Object> get props => [];
  get answerhighlight => true;
}

class AnswerhighlightInitial extends AnswerhighlightState {}

// ignore: must_be_immutable
class AnswerHighLight extends AnswerhighlightState {
  @override
  bool answerhighlight;
  AnswerHighLight({
    required this.answerhighlight,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AnswerHighLight && other.answerhighlight == answerhighlight;
  }

  @override
  int get hashCode => answerhighlight.hashCode;
}
