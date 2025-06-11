import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/resource.dart';
import '../../../../../core/network/dio_client.dart';

abstract class ResourceRemoteDataSource {
  Future<List<Resource>> getResources();
}

@Injectable(as: ResourceRemoteDataSource)
class ResourceRemoteDataSourceImpl implements ResourceRemoteDataSource {
  final DioClient _dioClient;

  ResourceRemoteDataSourceImpl(this._dioClient);

  @override
  Future<List<Resource>> getResources() async {
    try {
      final response = await _dioClient.get('/resources');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => Resource.fromJson(json)).toList();
      }
      throw Exception(response.data['message'] ?? 'Failed to fetch resources');
    } on DioException catch (e) {
      print('[DEBUG] DioException occurred during resources fetch');
      print('Status code: ${e.response?.statusCode}');
      print('Response data: ${e.response?.data}');
      print('Error message: ${e.message}');
      if (e.response?.data != null) {
        throw Exception(e.response!.data['message'] ?? e.message);
      }
      throw Exception(e.message ?? 'Failed to fetch resources. Please check your internet connection.');
    }
  }
} 