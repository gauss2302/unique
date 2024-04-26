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
  Future<UserModel> login({
    required String email, 
    required String password
    }) async {
      try {
        final res = await Future.delayed(
          const Duration(seconds: 2),
          () => UserModel.fromJson('{"id": "1", "email": "test@gmail.com"}`'),
        );
      } catch (e) {
        throw Exception(e);
      }

      return UserModel.fromJson();
    }



    @override
    Future<UserModel> signup({
      required String email,
      required String password,
      required String name,
      required String photoUrl,
    }) async {
      try {
        final res = await Future.delayed(
          const Duration(seconds: 2),
          () => {
            UserModel.fromMap(map: {
              'id': '1',
              'email': email,
              'name': name,
              'photoUrl': photoUrl,
            })
          }
        );
      } catch (e) {
        throw Exception(e);
      }
}
    return UserModel.fromMap();


}
