import "package:cattestapp/src/feature/details/view/widgets/details_view_wrapper.dart";
import "package:cattestapp/src/feature/home/view/widgets/home_view_wrapper.dart";
import "package:cattestapp/src/shared/context_extension.dart";
import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_localizations/flutter_localizations.dart";

import "settings/settings_controller.dart";
import "settings/settings_view.dart";

class MyApp extends StatelessWidget {
  const MyApp({
    required this.settingsController,
    required this.dio,
    super.key,
  });

  final SettingsController settingsController;
  final Dio dio;

  @override
  Widget build(final BuildContext context) {
    return ListenableBuilder(
      listenable: settingsController,
      builder: (final BuildContext context, final Widget? child) {
        return MaterialApp(
          restorationScopeId: "app",
          localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const <Locale>[
            Locale("en", ""), // English, no country code
          ],
          onGenerateTitle: (final BuildContext context) =>
              context.l10n.appTitle,
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
          onGenerateRoute: _onGenerateRoute,
        );
      },
    );
  }

  ///Routing function for the app.
  ///For more complex use cases  auto_route or go_router may be used.
  Route<dynamic>? _onGenerateRoute(final RouteSettings routeSettings) {
    return MaterialPageRoute<void>(
      settings: routeSettings,
      builder: (final BuildContext context) {
        switch (routeSettings.name) {
          case SettingsView.routeName:
            return SettingsView(controller: settingsController);
          case DetailsViewWrapper.routeName:
            return DetailsViewWrapper(
              args: routeSettings.arguments! as DetailsViewArguments,
              dio: dio,
            );
          case HomeViewWrapper.routeName:
          default:
            return HomeViewWrapper(dio: dio);
        }
      },
    );
  }
}
