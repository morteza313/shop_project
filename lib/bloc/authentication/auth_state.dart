import 'package:dartz/dartz.dart';

abstract class AuthState {}

class AithInitState extends AuthState {}

class AithLoadingState extends AuthState {}

class AuthResponseState extends AuthState {
  Either<String, String> response;
  AuthResponseState(this.response);
}
