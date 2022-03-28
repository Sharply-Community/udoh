import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'acceptedpost_state.dart';

class AcceptedpostCubit extends Cubit<AcceptedpostState> {
  AcceptedpostCubit() : super(AcceptedpostInitial());
  acceptedPost(bool acceptedpost) {
    emit(AcceptedPost(acceptedpost: acceptedpost));
  }
}
