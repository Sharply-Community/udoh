part of 'feelings_cubit.dart';

abstract class FeelingsState extends Equatable {
  const FeelingsState();

  @override
  List<Object> get props => [];
  get feelings => null;
}

class FeelingsInitial extends FeelingsState {}

class LikePhoto extends FeelingsState {
  @override
  final LikedPhoto feelings;

  const LikePhoto(this.feelings);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LikePhoto && other.feelings == feelings;
  }

  @override
  int get hashCode => feelings.hashCode;
}
