import 'package:flutter/material.dart';
import 'package:weatherforecast/core/widgets/support/support_field_body_widget.dart';
import 'package:weatherforecast/core/widgets/support/support_field_subject_widget.dart';
import 'package:weatherforecast/core/widgets/support/support_images_widget.dart';
import 'package:weatherforecast/core/widgets/support/support_send_widget.dart';
import 'package:weatherforecast/provider/email_send_provider.dart';

class SupportBodyWidget {
  static Expanded body(BuildContext context, EmailSendProvider esp) {
    return Expanded(
      flex: 9,
      child: Column(
        children: [
          SupportFieldSubjectWidget.subject(esp),
          SupportFieldBodyWidget.fieldBody(context, esp),
          SupportSendWidget.send(context, esp),
          SupportImagesWidget.img(context),
        ],
      ),
    );
  }
}
