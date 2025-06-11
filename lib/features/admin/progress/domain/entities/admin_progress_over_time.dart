import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_progress_over_time.freezed.dart';
part 'admin_progress_over_time.g.dart';

@freezed
class AdminProgressOverTime with _$AdminProgressOverTime {
  const factory AdminProgressOverTime({
    required DateTime date,
    required double score,
  }) = _AdminProgressOverTime;

  factory AdminProgressOverTime.fromJson(Map<String, dynamic> json) => _$AdminProgressOverTimeFromJson(json);
} 