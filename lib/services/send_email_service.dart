import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/services/google_auth_service.dart';

class SendEmailService {
  static Future sendEmail(BuildContext context, String text) async {
    // GoogleAuthService.singnOut();
    // return;
    final user = await GoogleAuthService.signIn();

    if (user == null) return;

    final String email = user.email;
    final auth = await user.authentication;
    final token = auth.accessToken!;

    final smtpServer = gmailSaslXoauth2(email, token);
    final message = Message()
      ..from = Address(email, user.displayName)
      ..recipients = ["jamshidbekhojimatov951@gmail.com"]
      ..subject = "Hello BLABLA"
      ..text = "Test Email";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
      SendEmailService.showSnacBar(context, text);
    } on MailerException catch (e) {
      print('Message not sent!!!!!!!!!!!!!!!!!');
      print(e);
    }
  }

  static void showSnacBar(
    BuildContext context,
    String text,
  ) {
    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: ColorConst.kPrimaryRed,
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentMaterialBanner()
      ..showSnackBar(snackBar);
  }
}
