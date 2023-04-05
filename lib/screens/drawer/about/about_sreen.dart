import 'package:flutter/material.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/core/widgets/about/about_by_widget.dart';
import 'package:weatherforecast/core/widgets/about/about_email_widget.dart';
import 'package:weatherforecast/core/widgets/about/about_telegram_widget.dart';
import 'package:weatherforecast/core/widgets/about/about_title_widget.dart';
import 'package:weatherforecast/core/widgets/about/about_version_widget.dart';
import 'package:weatherforecast/core/widgets/widget_container_background.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerBackgroundWidget.container(
        padding: const EdgeInsets.only(top: 30),
        context: context,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: context.h * 0.03),
                AboutTitleWidget.title(context),
                SizedBox(height: context.h * 0.02),
                AboutByWidget.by(),
                SizedBox(height: context.h * 0.05),
                AboutEmailWidget.email(context),
                SizedBox(height: context.h * 0.02),
                AboutTelegramWidget.telegram(context),
              ],
            ),
            AboutVersionWidget.version(),
          ],
        ),
      ),
    );
  }
}
