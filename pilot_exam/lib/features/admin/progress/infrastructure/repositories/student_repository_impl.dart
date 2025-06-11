import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/students_response.dart';
import '../../domain/repositories/student_repository.dart';
import '../datasources/student_remote_data_source.dart';

@Injectable(as: StudentRepository)
class StudentRepositoryImpl implements StudentRepository {
  final StudentRemoteDataSource _remoteDataSource;

  StudentRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, StudentsResponse>> getAllStudents() async {
    try {
      final response = await _remoteDataSource.getAllStudents();
      return Right(response);
    } catch (e) {
      return Left(e.toString().replaceAll('Exception: ', ''));
    }
  }
} 