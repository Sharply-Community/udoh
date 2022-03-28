import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'answerhighlight_state.dart';

class AnswerhighlightCubit extends Cubit<AnswerhighlightState> {
  AnswerhighlightCubit() : super(AnswerhighlightInitial());

  answerHighLight(bool answerhighlight) {
    emit(AnswerHighLight(answerhighlight: answerhighlight));
  }
}
