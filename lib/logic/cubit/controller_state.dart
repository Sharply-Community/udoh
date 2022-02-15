// ignore_for_file: avoid_renaming_method_parameters, avoid_types_as_parameter_names, non_constant_identifier_names

part of 'controller_cubit.dart';

abstract class ControllerState extends Equatable {
  const ControllerState();

  @override
  List<Object> get props => [];
  get controllerColor => false;
}

class ControllerInitial extends ControllerState {}

class ControlerColor extends ControllerState {
  @override
  final bool controllerColor;
  const ControlerColor(this.controllerColor);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ControlerColor && other.controllerColor == controllerColor;
  }

  @override
  int get hashCode => controllerColor.hashCode;
}
