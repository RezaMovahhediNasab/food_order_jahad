import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  final String? token;
  final String? refreshToken;
  final String? refreshTokenExpiryTime;

  LoginModel(
      {required this.refreshToken,
      required this.refreshTokenExpiryTime,
      required this.token});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
