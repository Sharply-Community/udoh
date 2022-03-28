import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'grouprecommendation_state.dart';

class GrouprecommendationCubit extends Cubit<GrouprecommendationState> {
  GrouprecommendationCubit() : super(GrouprecommendationInitial());

  groupRecommendation(bool grouprecommendation) {
    emit(GroupRecommendation(grouprecommendation: grouprecommendation));
  }
}
