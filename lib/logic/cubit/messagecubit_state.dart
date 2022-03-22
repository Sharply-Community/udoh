// ignore_for_file: must_be_immutable

part of 'messagecubit_cubit.dart';

abstract class MessagecubitState extends Equatable {
  const MessagecubitState();

  @override
  List<Object> get props => [];
  get message => true;
}

class MessagecubitInitial extends MessagecubitState {}

class Message extends MessagecubitState {
  @override
  bool message;

  Message({required this.message});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Message && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
