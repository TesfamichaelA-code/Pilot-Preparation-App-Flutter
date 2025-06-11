import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/constants/api_constants.dart';
import '../../../../../core/network/dio_client.dart';
import '../../domain/entities/students_response.dart';

abstract class StudentRemoteDataSource {
  Future<StudentsResponse> getAllStudents();
}

@Injectable(as: StudentRemoteDataSource)
class StudentRemoteDataSourceImpl implements StudentRemoteDataSource {
  final DioClient _dioClient;

  StudentRemoteDataSourceImpl(this._dioClient);

  @override
  Future<StudentsResponse> getAllStudents() async {
    try {
      final response = await _dioClient.get(
        ApiConstants.adminStudents,
      );

      if (response.statusCode == 200) {
        return StudentsResponse.fromJson(response.data);
      }
      throw Exception(response.data['message'] ?? 'Failed to get students');
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to get students. Please check your internet connection.');
    }
  }
} 