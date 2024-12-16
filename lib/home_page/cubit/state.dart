part of 'cubit.dart';

abstract class HomepageState {}

class HomepageInitial extends HomepageState {}

class HomepageError extends HomepageState {
  final String message;

  HomepageError({required this.message});
}

class HomepageSuccess extends HomepageState {
  final String userID;

  HomepageSuccess({required this.userID});
}