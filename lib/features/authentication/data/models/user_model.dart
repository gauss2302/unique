// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:unique_fl/features/authentication/domain/entities/user_entity.dart';

class UserModel extends Equatable implements UserEntity {
  final String id;
  final String email;
  final String name;
  final String photoUrl;

  const UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.photoUrl,
  });

  @override
  List<Object?> get props => [id, email, name, photoUrl];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'name': name,
      'photoUrl': photoUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      email: map['email'] as String,
      name: map['name'] as String,
      photoUrl: map['photoUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
