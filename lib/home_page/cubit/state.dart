part of 'cubit.dart';

abstract class HomeState {}

class InitHomeState extends HomeState {}

class InputError extends HomeState {
  final String error;

  InputError({required this.error});
}

class UserID extends HomeState {
  final String userID;

  UserID({required this.userID});
}
