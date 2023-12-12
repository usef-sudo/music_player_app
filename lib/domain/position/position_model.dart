// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

@freezed
class PositionModel with _$PositionModel {
  const factory PositionModel(
      {Duration? position,
      Duration? bufferedPosition,
      Duration? duration}) = _PositionModel;
  factory PositionModel.fromJson(Map<String, dynamic> json) =>
      _$PositionModelFromJson(json);
}
