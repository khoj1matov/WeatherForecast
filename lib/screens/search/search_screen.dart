import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/mock/cities_mock.dart';
import 'package:weatherforecast/core/widgets/widget_container_background.dart';
import 'package:weatherforecast/core/widgets/search/search_back_and_field_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_result_null_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_result_widget.dart';
import 'package:weatherforecast/core/widgets/widget_divider.dart';
import 'package:weatherforecast/provider/search_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint(CitiesMock.mapOfCities.toString());
    return ChangeNotifierProvider(
      create: (context) => SearchProvider(),
      child: Consumer<SearchProvider>(
        builder: (context, tf, child) => Scaffold(
          body: ContainerBackgroundWidget.container(
            context: context,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  SearchBackAndField.backAndField(context, tf),
                  Padding(
                    padding: const EdgeInsets.only(top: 115),
                    child: DividerWidget.divider(),
                  ),
                  context.read<SearchProvider>().cityName == null
                      ? SearchResultNullWidget.searchResultNull(context)
                      : SearchResultWidget.searchResult(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
