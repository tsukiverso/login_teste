import 'package:login_app/src/auth/domain/repo/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<bool> login(String email, String password) async {
    // fake, aceita só admin/123
    await Future.delayed(Duration(seconds: 1));
    return email == 'admin' && password == '123';
  }
}