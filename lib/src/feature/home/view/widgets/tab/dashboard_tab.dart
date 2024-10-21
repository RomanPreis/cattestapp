import "package:cattestapp/src/feature/home/bloc/home_bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class DashboardTab extends StatelessWidget {
  const DashboardTab(
    this.bloc, {
    super.key,
  });
  final HomeBloc bloc;

  @override
  Widget build(final BuildContext context) {
    return Center(
      child: BlocBuilder<HomeBloc, HomeState>(
        bloc: bloc,
        builder: (final BuildContext context, final HomeState state) {
          return Column(
            children: <Widget>[
              const Text("Summary"),
              Text(
                "${state.imageModels.length} pictures of cats downloaded",
              ),
            ],
          );
        },
      ),
    );
  }
}
