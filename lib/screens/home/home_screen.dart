import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/components/no_connection_comp.dart';
import 'package:weatherforecast/core/widgets/home/home_body_widget.dart';
import 'package:weatherforecast/screens/drawer/drawer_screen.dart';
import 'package:weatherforecast/provider/get_data_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.read<GetDataProvider>().checkCities(context);
    return BaseView(
      viewModal: HomeScreen,
      onPageBuilder: (context, widget) {
        return Scaffold(
          drawer: DrawerScreen.drawer(context),
          key: drawerKey,
          body: HomeBodyWidget.body(context),
        );
      },
    );
  }
}
