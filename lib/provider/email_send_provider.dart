import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class EmailSendProvider extends ChangeNotifier {
  TextEditingController? subjectController;
  TextEditingController? bodyController;
  List<String> attachments = [];

  Future<void> send(BuildContext context) async {
    final Email email = Email(
      body: bodyController!.text,
      subject: subjectController!.text,
      recipients: ["azanjonxojimatov6027@gmail.com"],
      attachmentPaths: attachments,
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
      showMySnackbar("Succses", Colors.green, context);
    } catch (error) {
      showMySnackbar(error.toString(), ColorConst.kPrimaryRed, context);
    }
    notifyListeners();
  }

  showMySnackbar(
    String content,
    Color color,
    BuildContext context,
  ) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content, maxLines: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        backgroundColor: color,
      ),
    );
  }
}
