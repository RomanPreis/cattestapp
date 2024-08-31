import "package:cattestapp/src/feature/details/bloc/details_view_bloc.dart";
import "package:cattestapp/src/feature/details/controller/details_controller.dart";
import "package:cattestapp/src/feature/details/view/details_view.dart";
import "package:cattestapp/src/feature/home/model/image_model.dart";
import "package:cattestapp/src/shared/bloc_disposer.dart";
import "package:dio/dio.dart";
import "package:flutter/widgets.dart";

final class DetailsViewArguments {
  const DetailsViewArguments(
    this.model,
  );
  final ImageModel model;
}

class DetailsViewWrapper extends StatefulWidget {
  const DetailsViewWrapper({
    required this.args,
    required this.dio,
    super.key,
  });

  final DetailsViewArguments args;
  final Dio dio;
  static const routeName = "/details";

  @override
  State<DetailsViewWrapper> createState() => _DetailsViewWrapperState();
}

class _DetailsViewWrapperState extends State<DetailsViewWrapper> {
  late final DetailsController detailsController;

  @override
  void initState() {
    super.initState();
    detailsController = DetailsController(widget.dio);
  }

  @override
  Widget build(final BuildContext context) {
    return BlocDisposer<DetailsViewBloc>(
      create: (final _) => DetailsViewBloc(
        model: widget.args.model,
        detailsController: detailsController,
      )..add(const DetailsViewInit()),
      builder: (final _, final bloc) => DetailsView(bloc),
    );
  }
}
