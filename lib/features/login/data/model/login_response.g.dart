// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String?,
      loginDetails: json['data'] == null
          ? null
          : LoginDetails.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.loginDetails,
      'status': instance.status,
      'code': instance.code,
    };

LoginDetails _$LoginDetailsFromJson(Map<String, dynamic> json) => LoginDetails(
  token: json['token'] as String?,
  userName: json['username'] as String?,
);

Map<String, dynamic> _$LoginDetailsToJson(LoginDetails instance) =>
    <String, dynamic>{'token': instance.token, 'username': instance.userName};
