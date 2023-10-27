import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(
    genericArgumentFactories: true)
class BaseResponse<T> {
  final List<String>? messages;

  final bool? succeeded;

  final T? data;

  BaseResponse(
      {required this.data, required this.messages, required this.succeeded});

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);
}
