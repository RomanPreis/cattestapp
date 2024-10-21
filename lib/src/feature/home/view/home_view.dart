import "package:cattestapp/src/feature/home/bloc/home_bloc.dart";
import "package:cattestapp/src/feature/home/view/widgets/tab/dashboard_tab.dart";
import "package:cattestapp/src/feature/home/view/widgets/tab/item_list_tab.dart";
import "package:cattestapp/src/settings/settings_view.dart";
import "package:flutter/material.dart";

class HomeView extends StatefulWidget {
  const HomeView(
    this.bloc, {
    super.key,
  });
  final HomeBloc bloc;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(final BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cat Pictures"),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(text: "List"),
              Tab(text: "Dashboard"),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: onSettingsPressed,
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            ItemListTab(widget.bloc),
            DashboardTab(widget.bloc),
          ],
        ),
      ),
    );
  }

  void onSettingsPressed() {
    Navigator.restorablePushNamed(
      context,
      SettingsView.routeName,
    );
  }
}
