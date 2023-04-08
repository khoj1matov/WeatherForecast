import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/core/widgets/search/search_borders_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_result/search_result_cities_widget.dart';
import 'package:weatherforecast/core/widgets/widget_container_background.dart';
import 'package:weatherforecast/core/widgets/search/search_result/search_result_body_widget.dart';
import 'package:weatherforecast/core/widgets/widget_divider.dart';
import 'package:weatherforecast/core/widgets/widget_to_back_widget.dart';
import 'package:weatherforecast/provider/search_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchProvider(),
      child: Consumer<SearchProvider>(
        builder: (context, tf, child) => Scaffold(
          body: ContainerBackgroundWidget.container(
            context: context,
            child: SingleChildScrollView(
              child: SizedBox(
                height: context.h,
                width: context.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: context.h * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              ToBackWidget.back(context),
                              SizedBox(
                                width: context.w * 0.84,
                                child: TextField(
                                  controller: controller,
                                  keyboardType: TextInputType.visiblePassword,
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryWhite,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  cursorColor: ColorConst.kPrimaryWhite,
                                  cursorWidth: 2.5,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        tf.inputText(controller.text);
                                      },
                                      color: ColorConst.kPrimaryWhite,
                                      icon: Icon(Icons.search),
                                    ),
                                    suffixIconColor: ColorConst.kPrimaryWhite,
                                    hintText: "Enter the name of the place",
                                    hintMaxLines: 1,
                                    hintStyle: TextStyle(
                                      color: ColorConst.kPrimaryWhite,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    border: SearchBordersWidget.borders(
                                      color: ColorConst.kPrimaryWhite,
                                    ),
                                    enabledBorder: SearchBordersWidget.borders(
                                      color: ColorConst.kPrimaryWhite,
                                    ),
                                    focusedBorder: SearchBordersWidget.borders(
                                      color: ColorConst.kPrimaryWhite,
                                    ),
                                    focusedErrorBorder:
                                        SearchBordersWidget.borders(
                                      color: ColorConst.kPrimaryRed,
                                    ),
                                    disabledBorder: SearchBordersWidget.borders(
                                      color: ColorConst.kPrimaryRed,
                                    ),
                                  ),
                                  onEditingComplete: () {
                                    tf.inputText(controller.text);
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      tf.filterSearchResults(value);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          DividerWidget.divider(),
                        ],
                      ),
                    ),
                    context.read<SearchProvider>().searchString == ""
                        ? SearchResultCitiesWidget.searchResultNull(context, tf)
                        : SearchResulBodytWidget.searchResult(context, tf),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
