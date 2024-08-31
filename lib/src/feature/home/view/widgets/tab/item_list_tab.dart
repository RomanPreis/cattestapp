import "package:cattestapp/src/feature/details/view/widgets/details_view_wrapper.dart";
import "package:cattestapp/src/feature/home/bloc/home_bloc.dart";
import "package:cattestapp/src/feature/home/model/image_model.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class ItemListTab extends StatefulWidget {
  const ItemListTab(
    this.bloc, {
    super.key,
  });
  final HomeBloc bloc;

  @override
  State<ItemListTab> createState() => _ItemListTabState();
}

class _ItemListTabState extends State<ItemListTab> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadOnMaxExtent);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget.bloc,
      builder: (final context, final state) {
        return state.exception != null
            ? Center(child: Text(state.exception.toString()))
            : ListView.builder(
                controller: _scrollController,
                restorationId: "sampleItemListView",
                itemCount: state.imageModels.length + (state.isLoading ? 1 : 0),
                itemBuilder: (final BuildContext context, final int index) {
                  if (index == state.imageModels.length) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    final item = state.imageModels[index];
                    return ListTile(
                      key: ValueKey<ImageModel>(item),
                      title: Text("id: ${item.id}"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(item.url),
                        onBackgroundImageError: _onBackgroundImageError,
                      ),
                      onTap: () => _onListItemTapped(item),
                    );
                  }
                },
              );
      },
    );
  }

  void _onListItemTapped(final ImageModel model) {
    Navigator.pushNamed(
      context,
      DetailsViewWrapper.routeName,
      arguments: DetailsViewArguments(model),
    );
  }

  void _loadOnMaxExtent() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      widget.bloc.add(const HomeUpdate());
    }
  }

  void _onBackgroundImageError(
    final Object error,
    final StackTrace? st,
  ) {
    widget.bloc.add(HomeBgImageError(error, st));
  }
}
