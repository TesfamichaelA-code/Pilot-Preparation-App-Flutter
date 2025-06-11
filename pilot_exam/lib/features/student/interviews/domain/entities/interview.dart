import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview.freezed.dart';
part 'interview.g.dart';

@freezed
class Interview with _$Interview {
  const factory Interview({
    @JsonKey(name: '_id') required String id,
    required String question,
    required String sampleAnswer,
    required String category,
    required String difficulty,
    required String tipsForAnswering,
    required int yearAsked,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Interview;

  factory Interview.fromJson(Map<String, dynamic> json) => _$InterviewFromJson(json);

  // Static filtering method - only by category
  static List<Interview> filterByCategory(
    List<Interview> interviews,
    String? category,
  ) {
    if (category == null) {
      return interviews;
    }
    
    return interviews.where((interview) => 
      interview.category.toLowerCase() == category.toLowerCase()
    ).toList();
  }
} 