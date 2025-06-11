// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pilot_exam_app/core/di/storage_module.dart' as _i858;
import 'package:pilot_exam_app/core/network/dio_client.dart' as _i231;
import 'package:pilot_exam_app/core/services/token_service.dart' as _i752;
import 'package:pilot_exam_app/features/admin/exam/application/exam_notifier.dart'
    as _i1017;
import 'package:pilot_exam_app/features/admin/exam/domain/repositories/exam_repository.dart'
    as _i932;
import 'package:pilot_exam_app/features/admin/exam/infrastructure/datasources/exam_remote_data_source.dart'
    as _i633;
import 'package:pilot_exam_app/features/admin/exam/infrastructure/repositories/exam_repository_impl.dart'
    as _i620;
import 'package:pilot_exam_app/features/admin/progress/application/student_notifier.dart'
    as _i406;
import 'package:pilot_exam_app/features/admin/progress/domain/repositories/student_repository.dart'
    as _i388;
import 'package:pilot_exam_app/features/admin/progress/infrastructure/datasources/student_remote_data_source.dart'
    as _i456;
import 'package:pilot_exam_app/features/admin/progress/infrastructure/repositories/student_repository_impl.dart'
    as _i272;
import 'package:pilot_exam_app/features/authentication/application/auth_notifier.dart'
    as _i392;
import 'package:pilot_exam_app/features/authentication/domain/repositories/auth_repository.dart'
    as _i371;
import 'package:pilot_exam_app/features/authentication/infrastructure/datasources/auth_remote_data_source.dart'
    as _i861;
import 'package:pilot_exam_app/features/authentication/infrastructure/repositories/auth_repository_impl.dart'
    as _i664;
import 'package:pilot_exam_app/features/student/exams/application/exam_notifier.dart'
    as _i741;
import 'package:pilot_exam_app/features/student/exams/application/question_notifier.dart'
    as _i618;
import 'package:pilot_exam_app/features/student/exams/domain/repositories/exam_progress_repository.dart'
    as _i577;
import 'package:pilot_exam_app/features/student/exams/domain/repositories/exam_repository.dart'
    as _i987;
import 'package:pilot_exam_app/features/student/exams/domain/repositories/question_repository.dart'
    as _i894;
import 'package:pilot_exam_app/features/student/exams/infrastructure/datasources/exam_progress_remote_data_source.dart'
    as _i123;
import 'package:pilot_exam_app/features/student/exams/infrastructure/datasources/exam_remote_data_source.dart'
    as _i534;
import 'package:pilot_exam_app/features/student/exams/infrastructure/datasources/remote_question_data_source.dart'
    as _i1062;
import 'package:pilot_exam_app/features/student/exams/infrastructure/repositories/exam_progress_repository_impl.dart'
    as _i420;
import 'package:pilot_exam_app/features/student/exams/infrastructure/repositories/exam_repository_impl.dart'
    as _i726;
import 'package:pilot_exam_app/features/student/exams/infrastructure/repositories/question_repository_impl.dart'
    as _i468;
import 'package:pilot_exam_app/features/student/interviews/application/interview_notifier.dart'
    as _i1069;
import 'package:pilot_exam_app/features/student/interviews/domain/repositories/interview_repository.dart'
    as _i267;
import 'package:pilot_exam_app/features/student/interviews/infrastructure/datasources/interview_remote_data_source.dart'
    as _i67;
import 'package:pilot_exam_app/features/student/interviews/infrastructure/repositories/interview_repository_impl.dart'
    as _i119;
import 'package:pilot_exam_app/features/student/progress/application/progress_notifier.dart'
    as _i879;
import 'package:pilot_exam_app/features/student/progress/domain/repositories/i_progress_repository.dart'
    as _i903;
import 'package:pilot_exam_app/features/student/progress/infrastructure/datasources/progress_remote_data_source.dart'
    as _i176;
import 'package:pilot_exam_app/features/student/progress/infrastructure/repositories/progress_repository_impl.dart'
    as _i289;
import 'package:pilot_exam_app/features/student/resources/application/resource_notifier.dart'
    as _i26;
import 'package:pilot_exam_app/features/student/resources/domain/repositories/i_resource_repository.dart'
    as _i90;
import 'package:pilot_exam_app/features/student/resources/infrastructure/datasources/resource_remote_data_source.dart'
    as _i739;
import 'package:pilot_exam_app/features/student/resources/infrastructure/repositories/resource_repository.dart'
    as _i379;
import 'package:pilot_exam_app/features/student/user/application/update_profile_notifier.dart'
    as _i258;
import 'package:pilot_exam_app/features/student/user/application/user_notifier.dart'
    as _i740;
import 'package:pilot_exam_app/features/student/user/domain/repositories/user_repository.dart'
    as _i240;
import 'package:pilot_exam_app/features/student/user/infrastructure/datasources/user_remote_data_source.dart'
    as _i1019;
import 'package:pilot_exam_app/features/student/user/infrastructure/repositories/user_repository_impl.dart'
    as _i445;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final storageModule = _$StorageModule();
    gh.singleton<_i558.FlutterSecureStorage>(() => storageModule.secureStorage);
    gh.factory<_i752.TokenService>(
        () => _i752.TokenService(storage: gh<_i558.FlutterSecureStorage>()));
    gh.factory<_i231.DioClient>(
        () => _i231.DioClient(gh<_i752.TokenService>()));
    gh.factory<_i176.ProgressRemoteDataSource>(
        () => _i176.ProgressRemoteDataSourceImpl(gh<_i231.DioClient>()));
    gh.factory<_i123.ExamProgressRemoteDataSource>(
        () => _i123.ExamProgressRemoteDataSourceImpl(gh<_i231.DioClient>()));
    gh.factory<_i739.ResourceRemoteDataSource>(
        () => _i739.ResourceRemoteDataSourceImpl(gh<_i231.DioClient>()));
    gh.factory<_i534.ExamRemoteDataSource>(
        () => _i534.ExamRemoteDataSourceImpl(gh<_i231.DioClient>()));
    gh.factory<_i1062.QuestionRemoteDataSource>(
        () => _i1062.QuestionRemoteDataSourceImpl(gh<_i231.DioClient>()));
    gh.factory<_i633.ExamRemoteDataSource>(
        () => _i633.ExamRemoteDataSourceImpl(gh<_i231.DioClient>()));
    gh.factory<_i67.InterviewRemoteDataSource>(
        () => _i67.InterviewRemoteDataSourceImpl(gh<_i231.DioClient>()));
    gh.factory<_i861.AuthRemoteDataSource>(
        () => _i861.AuthRemoteDataSourceImpl(gh<_i231.DioClient>()));
    gh.factory<_i903.IProgressRepository>(() =>
        _i289.ProgressRepositoryImpl(gh<_i176.ProgressRemoteDataSource>()));
    gh.factory<_i987.ExamRepository>(
        () => _i726.ExamRepositoryImpl(gh<_i534.ExamRemoteDataSource>()));
    gh.factory<_i741.ExamNotifier>(
        () => _i741.ExamNotifier(gh<_i987.ExamRepository>()));
    gh.factory<_i90.IResourceRepository>(() =>
        _i379.ResourceRepositoryImpl(gh<_i739.ResourceRemoteDataSource>()));
    gh.factory<_i577.ExamProgressRepository>(() =>
        _i420.ExamProgressRepositoryImpl(
            gh<_i123.ExamProgressRemoteDataSource>()));
    gh.factory<_i1019.UserRemoteDataSource>(
        () => _i1019.UserRemoteDataSourceImpl(gh<_i231.DioClient>()));
    gh.factory<_i267.InterviewRepository>(() =>
        _i119.InterviewRepositoryImpl(gh<_i67.InterviewRemoteDataSource>()));
    gh.factory<_i879.ProgressNotifier>(
        () => _i879.ProgressNotifier(gh<_i903.IProgressRepository>()));
    gh.factory<_i371.AuthRepository>(() => _i664.AuthRepositoryImpl(
          gh<_i861.AuthRemoteDataSource>(),
          gh<_i752.TokenService>(),
          gh<_i231.DioClient>(),
        ));
    gh.factory<_i26.ResourceNotifier>(
        () => _i26.ResourceNotifier(gh<_i90.IResourceRepository>()));
    gh.factory<_i456.StudentRemoteDataSource>(
        () => _i456.StudentRemoteDataSourceImpl(gh<_i231.DioClient>()));
    gh.factory<_i932.ExamRepository>(
        () => _i620.ExamRepositoryImpl(gh<_i633.ExamRemoteDataSource>()));
    gh.factory<_i1069.InterviewNotifier>(
        () => _i1069.InterviewNotifier(gh<_i267.InterviewRepository>()));
    gh.factory<_i894.QuestionRepository>(() =>
        _i468.QuestionRepositoryImpl(gh<_i1062.QuestionRemoteDataSource>()));
    gh.factory<_i240.UserRepository>(
        () => _i445.UserRepositoryImpl(gh<_i1019.UserRemoteDataSource>()));
    gh.factory<_i388.StudentRepository>(
        () => _i272.StudentRepositoryImpl(gh<_i456.StudentRemoteDataSource>()));
    gh.factory<_i406.StudentNotifier>(
        () => _i406.StudentNotifier(gh<_i388.StudentRepository>()));
    gh.factory<_i392.AuthNotifier>(
        () => _i392.AuthNotifier(gh<_i371.AuthRepository>()));
    gh.factory<_i1017.ExamNotifier>(
        () => _i1017.ExamNotifier(gh<_i932.ExamRepository>()));
    gh.factory<_i258.UpdateProfileNotifier>(
        () => _i258.UpdateProfileNotifier(gh<_i240.UserRepository>()));
    gh.factory<_i740.UserNotifier>(
        () => _i740.UserNotifier(gh<_i240.UserRepository>()));
    gh.factory<_i618.QuestionNotifier>(
        () => _i618.QuestionNotifier(gh<_i894.QuestionRepository>()));
    return this;
  }
}

class _$StorageModule extends _i858.StorageModule {}
