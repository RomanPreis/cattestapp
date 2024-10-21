import "dart:developer";

import "package:cattestapp/src/feature/home/controller/model/request_params.dart";
import "package:cattestapp/src/feature/home/model/image_model.dart";
import "package:cattestapp/src/shared/app_controller.dart";
import "package:cattestapp/src/shared/app_urls.dart";
import "package:dio/dio.dart";
import "package:fpdart/fpdart.dart";

///Controller class for API requests. Uses [Dio] instance for HTTP, [Either] for
/// error handling
final class FeatureController extends AppController {
  FeatureController(super.dio);

  Future<Either<Exception, List<ImageModel>>> getCatPictures({
    required final RequestParams params,
  }) async {
    try {
      final Response<List<dynamic>> response = await dio.get<List<dynamic>>(
        AppUrls.search,
        queryParameters: params.toJson(),
      );
      final List<dynamic>? data = response.data;
      final List<ImageModel> result = data!
          .map(
            (final dynamic e) => ImageModel.fromJson(e as Map<String, dynamic>),
          )
          .toList();
      return Right<Exception, List<ImageModel>>(result);
    } on Exception catch (e, st) {
      log(e.toString(), error: e, stackTrace: st);
      return Left<Exception, List<ImageModel>>(Exception(e.toString()));
    }
  }
}
