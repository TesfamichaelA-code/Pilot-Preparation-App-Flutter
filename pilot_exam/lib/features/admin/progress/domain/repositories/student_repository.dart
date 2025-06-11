import 'package:dartz/dartz.dart';
import '../entities/students_response.dart';

abstract class StudentRepository {
  Future<Either<String, StudentsResponse>> getAllStudents();
} 