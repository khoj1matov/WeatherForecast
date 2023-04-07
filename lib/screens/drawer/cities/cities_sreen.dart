import 'package:flutter/material.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/core/widgets/cities/cities_body_widget.dart';
import 'package:weatherforecast/core/widgets/cities/cities_title_widget.dart';
import 'package:weatherforecast/core/widgets/widget_container_background.dart';

class CitiesScreen extends StatelessWidget {
  CitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerBackgroundWidget.container(
        context: context,
        child: Column(
          children: [
            SizedBox(height: context.h * 0.05),
            CitiesTitleWidget.title(context),
            CitiesBodyWidget.body(context),
          ],
        ),
      ),
    );
  }
}
