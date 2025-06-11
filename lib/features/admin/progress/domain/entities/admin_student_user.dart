import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_student_user.freezed.dart';
part 'admin_student_user.g.dart';

@freezed
class AdminStudentUser with _$AdminStudentUser {
  const factory AdminStudentUser({
    required String id,
    required String name,
    required String email,
  }) = _AdminStudentUser;

  factory AdminStudentUser.fromJson(Map<String, dynamic> json) => _$AdminStudentUserFromJson(json);
} 