import "package:flutter/widgets.dart";
import "package:flutter_bloc/flutter_bloc.dart";

typedef BlocCreator<T extends Bloc<dynamic, dynamic>> = T Function(
  BuildContext context,
);
typedef Builder<T extends Bloc<dynamic, dynamic>> = Widget Function(
  BuildContext context,
  T bloc,
);

/// Helper class for creating and disposing Bloc analogous to [BlocProvider],
/// but without spreading it to the subtree
class BlocDisposer<T extends Bloc<dynamic, dynamic>> extends StatefulWidget {
  const BlocDisposer({
    super.key,
    required this.create,
    required this.builder,
  });

  final BlocCreator<T> create;
  final Builder<T> builder;

  @override
  State<BlocDisposer<T>> createState() => _BlocDisposerState<T>();
}

class _BlocDisposerState<T extends Bloc<dynamic, dynamic>>
    extends State<BlocDisposer<T>> {
  late final T bloc;

  @override
  void initState() {
    bloc = widget.create(context);
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return widget.builder(context, bloc);
  }
}
