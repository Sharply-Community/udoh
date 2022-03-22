part of 'grouprecommendation_cubit.dart';

abstract class GrouprecommendationState extends Equatable {
  const GrouprecommendationState();

  @override
  List<Object> get props => [];
  get grouprecommendation => true;
}

class GrouprecommendationInitial extends GrouprecommendationState {}

// ignore: must_be_immutable
class GroupRecommendation extends GrouprecommendationState {
  @override
  bool grouprecommendation;
  GroupRecommendation({
    required this.grouprecommendation,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GroupRecommendation &&
        other.grouprecommendation == grouprecommendation;
  }

  @override
  int get hashCode => grouprecommendation.hashCode;
}
