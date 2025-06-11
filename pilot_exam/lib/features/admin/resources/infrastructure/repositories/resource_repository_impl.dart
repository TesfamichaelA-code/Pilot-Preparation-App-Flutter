import 'package:dartz/dartz.dart';
import '../../domain/entities/resource.dart';
import '../../domain/entities/create_resource_request.dart';
import '../../domain/repositories/resource_repository.dart';
import '../datasources/resource_remote_data_source.dart';

class ResourceRepositoryImpl implements ResourceRepository {
  final ResourceRemoteDataSource remoteDataSource;

  ResourceRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<String, Resource>> createResource(CreateResourceRequest request) async {
    try {
      final result = await remoteDataSource.createResource(request);
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }
} 