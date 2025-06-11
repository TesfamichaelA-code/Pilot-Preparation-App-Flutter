import 'package:dartz/dartz.dart';
import '../entities/resource.dart';
import '../entities/create_resource_request.dart';
 
abstract class ResourceRepository {
  Future<Either<String, Resource>> createResource(CreateResourceRequest request);
} 