import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'messagecubit_state.dart';

class MessagecubitCubit extends Cubit<MessagecubitState> {
  MessagecubitCubit() : super(MessagecubitInitial());

  messageToggle(bool message) {
    emit(Message(message: false));
  }
}
