// ignore_for_file: must_be_immutable

part of 'request_cubit.dart';

abstract class RequestState extends Equatable {
  const RequestState();

  @override
  List<Object> get props => [];
  get request => true;
}

class RequestInitial extends RequestState {}

class RequestQue extends RequestInitial {
  @override
  bool request;
  RequestQue({
    required this.request,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RequestQue && other.request == request;
  }

  @override
  int get hashCode => request.hashCode;
}
