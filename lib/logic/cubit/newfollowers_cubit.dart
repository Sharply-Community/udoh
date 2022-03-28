import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newfollowers_state.dart';

class NewfollowersCubit extends Cubit<NewfollowersState> {
  NewfollowersCubit() : super(NewfollowersInitial());
  newFollower(bool newfollowers) {
    emit(NewFollowers(newfollowers: newfollowers));
  }
}
