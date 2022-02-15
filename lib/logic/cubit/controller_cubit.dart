import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'controller_state.dart';

class ControllerCubit extends Cubit<ControllerState> {
  ControllerCubit() : super(ControllerInitial());

  void updateColor(String controller) {
    emit(ControlerColor(controller.isNotEmpty));
  }
}
