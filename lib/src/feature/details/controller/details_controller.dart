import "dart:developer";

import "package:cattestapp/src/feature/home/model/image_model.dart";
import "package:cattestapp/src/shared/app_controller.dart";
import "package:cattestapp/src/shared/app_urls.dart";
import "package:fpdart/fpdart.dart";

final class DetailsController extends AppController {
  DetailsController(super.dio);

  Future<Either<Exception, ImageModel>> getImageDetails(final String id) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(AppUrls.image + id);
      final data = response.data;
      final result = ImageModel.fromJson(data!);
      return Right(result);
    } catch (e, st) {
      log(e.toString(), error: e, stackTrace: st);
      return Left(Exception(e.toString()));
    }
  }
}
