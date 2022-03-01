part of 'pagecontroller_cubit.dart';

abstract class PagecontrollerState extends Equatable {
  const PagecontrollerState();

  @override
  List<Object> get props => [];
  get controller => 0;
}

class PagecontrollerInitial extends PagecontrollerState {
  @override
  final int controller;

  const PagecontrollerInitial({required this.controller});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PagecontrollerInitial && other.controller == controller;
  }

  @override
  int get hashCode => controller.hashCode;
}

class PageController extends PagecontrollerState {
  @override
  final int controller;

  const PageController({required this.controller});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PageController && other.controller == controller;
  }

  @override
  int get hashCode => controller.hashCode;
}
