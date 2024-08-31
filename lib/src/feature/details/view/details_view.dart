import "package:cattestapp/src/feature/details/bloc/details_view_bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class DetailsView extends StatelessWidget {
  const DetailsView(
    this.bloc, {
    super.key,
  });
  final DetailsViewBloc bloc;
  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Details"),
      ),
      body: BlocBuilder<DetailsViewBloc, DetailsViewState>(
        bloc: bloc,
        builder: (final context, final state) {
          final model = state.imageModel;
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("id: ${model.id}"),
                  Image.network(model.url),
                  if (state.hasBreedInfo) ...[
                    Text(state.breedName),
                    Text(state.wikiUrl),
                    Text(state.affection),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(state.description),
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
