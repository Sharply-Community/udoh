part of 'container_cubit.dart';

abstract class ContainerState extends Equatable {
  const ContainerState();

  @override
  List<Object> get props => [];

  get selectedIndex => null;
  get selectedGender => null;
  get changeColor => false;
}

class ContainerInitial extends ContainerState {}

class SetstateChanged extends ContainerState {
  @override
  final Gender selectedIndex;
  const SetstateChanged(this.selectedIndex);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SetstateChanged && other.selectedIndex == selectedIndex;
  }

  @override
  int get hashCode => selectedIndex.hashCode;
}

class GenderSelected extends ContainerState {
  @override
  final Select selectedGender;
  const GenderSelected(this.selectedGender);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GenderSelected && other.selectedGender == selectedGender;
  }

  @override
  int get hashCode => selectedGender.hashCode;
}

class ChangeButtonColor extends ContainerState {
  @override
  final bool changeColor;
  const ChangeButtonColor(this.changeColor);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChangeButtonColor && other.changeColor == changeColor;
  }

  @override
  int get hashCode => changeColor.hashCode;
}
