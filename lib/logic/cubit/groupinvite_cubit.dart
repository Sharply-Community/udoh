import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'groupinvite_state.dart';

class GroupinviteCubit extends Cubit<GroupinviteState> {
  GroupinviteCubit() : super(GroupinviteInitial());

  groupInvite(bool groupinvite) {
    emit(GroupInvite(groupinvite: true));
  }
}
