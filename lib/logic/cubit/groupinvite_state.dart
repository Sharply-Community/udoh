// ignore_for_file: must_be_immutable

part of 'groupinvite_cubit.dart';

abstract class GroupinviteState extends Equatable {
  const GroupinviteState();

  @override
  List<Object> get props => [];
  get groupinvite => true;
}

class GroupinviteInitial extends GroupinviteState {}

class GroupInvite extends GroupinviteState {
  @override
  bool groupinvite;
  GroupInvite({
    required this.groupinvite,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GroupInvite && other.groupinvite == groupinvite;
  }

  @override
  int get hashCode => groupinvite.hashCode;
}
