import 'package:json_annotation/json_annotation.dart';

part 'login_rqm.g.dart';

@JsonSerializable()
class LoginRQM {
  final String email;
  final String password;

  LoginRQM({required this.email, required this.password});

  factory LoginRQM.fromJson(Map<String, dynamic> json) =>
      _$LoginRQMFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRQMToJson(this);

}
