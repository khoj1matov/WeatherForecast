import 'package:flutter/material.dart';
import 'package:weatherforecast/core/widgets/widget_container_background.dart';
import 'package:weatherforecast/services/send_email_service.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerBackgroundWidget.container(
        context: context,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 400,
                ),
                InkWell(
                  child: Text("sebd"),
                  onTap: () {
                    SendEmailService.sendEmail(context, "dssd");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
