// ignore_for_file: prefer_const_declarations

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pagecontroller_state.dart';

class PagecontrollerCubit extends Cubit<PagecontrollerState> {
  PagecontrollerCubit() : super(const PagecontrollerInitial(controller: 0));
  getPageController(int controller) {
    emit(PagecontrollerInitial(controller: state.controller));
    emit(PageController(controller: controller));
  }
}
