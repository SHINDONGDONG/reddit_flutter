import 'package:reddit_flutter/features/auth/repository/auth_repository.dart';

class AuthController {
  final AuthRepository _authRepository;
  AuthController({required AuthRepository authRepository }) : _authRepository = authRepository;

  void signInWithGoogle() {
    _authRepository.signInWithGoogle();
  }


}