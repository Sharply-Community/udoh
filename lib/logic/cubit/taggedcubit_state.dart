part of 'taggedcubit_cubit.dart';

abstract class TaggedcubitState extends Equatable {
  const TaggedcubitState();

  @override
  List<Object> get props => [];
  get tagged => true;
}

class TaggedcubitInitial extends TaggedcubitState {}

class Tagged extends TaggedcubitState {
  @override
  final bool tagged;
  const Tagged({required this.tagged});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Tagged && other.tagged == tagged;
  }

  @override
  int get hashCode => tagged.hashCode;
}
