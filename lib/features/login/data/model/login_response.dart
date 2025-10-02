import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String? message;
  @JsonKey(name: 'data')
  final LoginDetails? loginDetails;
  final bool? status;
  final int? code;

  LoginResponse({this.message, this.loginDetails, this.status, this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class LoginDetails {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  LoginDetails({this.token, this.userName});
  factory LoginDetails.fromJson(Map<String, dynamic> json) =>
      _$LoginDetailsFromJson(json);
}
