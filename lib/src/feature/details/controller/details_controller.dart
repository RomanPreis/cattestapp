import "dart:developer";

import "package:cattestapp/src/feature/home/model/image_model.dart";
import "package:cattestapp/src/shared/app_controller.dart";
import "package:cattestapp/src/shared/app_urls.dart";
import "package:dio/dio.dart";
import "package:fpdart/fpdart.dart";

final class DetailsController extends AppController {
  DetailsController(super.dio);

  Future<Either<Exception, ImageModel>> getImageDetails(final String id) async {
    try {
      final Response<Map<String, dynamic>> response =
          await dio.get<Map<String, dynamic>>(AppUrls.image + id);
      final Map<String, dynamic>? data = response.data;
      final ImageModel result = ImageModel.fromJson(data!);
      return Right<Exception, ImageModel>(result);
    } on Exception catch (e, st) {
      log(e.toString(), error: e, stackTrace: st);
      return Left<Exception, ImageModel>(Exception(e.toString()));
    }
  }
}
