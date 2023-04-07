import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/core/widgets/support/support_body_widget.dart';
import 'package:weatherforecast/core/widgets/support/support_title_widget.dart';
import 'package:weatherforecast/core/widgets/widget_container_background.dart';
import 'package:weatherforecast/provider/email_send_provider.dart';

class SupportScreen extends StatelessWidget {
  SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmailSendProvider(),
      child: Consumer<EmailSendProvider>(
        builder: (context, esp, child) => Scaffold(
          body: ContainerBackgroundWidget.container(
            context: context,
            child: SingleChildScrollView(
              child: SizedBox(
                height: context.h,
                child: Column(
                  children: [
                    SizedBox(height: context.h * 0.03),
                    SupportTitleWidget.title(context, esp),
                    SupportBodyWidget.body(context, esp),
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
