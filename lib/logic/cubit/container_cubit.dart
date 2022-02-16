import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'container_state.dart';

enum Gender { login, register }
enum Select { male, female }

class ContainerCubit extends Cubit<ContainerState> {
  ContainerCubit() : super(ContainerInitial());

  void genderChanged(Gender selectedGender) {
    emit(SetstateChanged(selectedGender));
  }

  void colorChanged(String pin) {
    emit(ChangeButtonColor(pin.isNotEmpty));
  }

  void selectGender(Select selectedGender) {
    emit(GenderSelected(selectedGender));
  }
}
