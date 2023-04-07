import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class EmailSendProvider extends ChangeNotifier {
  TextEditingController subjectController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  List<String> attachments = [];

  Future<void> send(BuildContext context) async {
    final Email email = Email(
      body: bodyController.text,
      subject: subjectController.text,
      recipients: ["azanjonxojimatov6027@gmail.com"],
      attachmentPaths: attachments,
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
      // showMySnackbar("Succses", Colors.green, context);
    } catch (error) {
      // showMySnackbar(error.toString(), ColorConst.kPrimaryRed, context);
    }
    notifyListeners();
  }
}
