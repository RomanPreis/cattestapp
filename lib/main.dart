import "dart:isolate";

import "package:cattestapp/src/shared/constants.dart";
import "package:dio/dio.dart";
import "package:flutter/material.dart";

import "src/app.dart";
import "src/settings/settings_controller.dart";
import "src/settings/settings_service.dart";

void main() async {
  final SettingsController settingsController = SettingsController(
    SettingsService(),
  );
  final Dio dio = Dio(
    BaseOptions(
      headers: <String, dynamic>{
        "x-api-key": Constants.apiKey,
      },
      receiveTimeout: const Duration(seconds: 15),
    ),
  );

  await settingsController.loadSettings();
  runApp(
    MyApp(
      settingsController: settingsController,
      dio: dio,
    ),
  );
}
