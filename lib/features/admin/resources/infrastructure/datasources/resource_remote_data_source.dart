import 'package:dio/dio.dart';
import '../../domain/entities/resource.dart';
import '../../domain/entities/create_resource_request.dart';

abstract class ResourceRemoteDataSource {
  Future<Resource> createResource(CreateResourceRequest request);
}

class ResourceRemoteDataSourceImpl implements ResourceRemoteDataSource {
  final Dio dio;

  ResourceRemoteDataSourceImpl(this.dio);

  @override
  Future<Resource> createResource(CreateResourceRequest request) async {
    print('Sending resource: ${request.toJson()}');
    final response = await dio.post(
      '/resources',
      data: request.toJson(),
    );
    return Resource.fromJson(response.data['data']);
  }
} 