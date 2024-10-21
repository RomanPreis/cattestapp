import "package:cattestapp/src/feature/home/bloc/home_bloc.dart";
import "package:cattestapp/src/feature/home/controller/feature_controller.dart";
import "package:cattestapp/src/feature/home/view/home_view.dart";
import "package:cattestapp/src/shared/bloc_disposer.dart";
import "package:dio/dio.dart";
import "package:flutter/widgets.dart";

///Standard wrapper widget for DI purposes.
///[BlocDisposer] and [FeatureController] are initialized here.
///Also used for routing
class HomeViewWrapper extends StatefulWidget {
  const HomeViewWrapper({
    required this.dio,
    super.key,
  });
  final Dio dio;
  static const String routeName = "/";

  @override
  State<HomeViewWrapper> createState() => _HomeViewWrapperState();
}

class _HomeViewWrapperState extends State<HomeViewWrapper> {
  late final FeatureController featureController;
  @override
  void initState() {
    super.initState();
    featureController = FeatureController(widget.dio);
  }

  @override
  Widget build(final BuildContext context) {
    return BlocDisposer<HomeBloc>(
      create: (final _) =>
          HomeBloc(featureController: featureController)..add(const HomeInit()),
      builder: (final _, final HomeBloc bloc) => HomeView(bloc),
    );
  }
}
