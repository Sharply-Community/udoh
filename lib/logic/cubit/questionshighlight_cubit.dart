import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'questionshighlight_state.dart';

class QuestionshighlightCubit extends Cubit<QuestionshighlightState> {
  QuestionshighlightCubit() : super(QuestionshighlightInitial());
  questionHighLight(bool question) {
    emit(Question(question: true));
  }
}
