import 'package:unique_fl/features/authentication/data/models/user_model.dart';

abstract interface class AuthData {
  Future<UserModel> login({
    required String email,
    required String password,
  });

  Future<UserModel> signup({
    required String email,
    required String password,
    required String name,
    required String photoUrl,
  });
}

class AuthDataImpl implements AuthData {
  @override
  Future<UserModel> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signup(
      {required String email,
      required String password,
      required String name,
      required String photoUrl}) {
    // TODO: implement signup
    throw UnimplementedError();
  }
}
