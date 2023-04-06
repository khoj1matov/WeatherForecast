import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/provider/email_send_provider.dart';

class ImagePickerProvider extends ChangeNotifier {
  Future openImagePicker(BuildContext context) async {
    final pick = await ImagePicker().getImage(source: ImageSource.gallery);
    if (pick != null) {
      context.read<EmailSendProvider>().attachments.add(pick.path);
    }
  }

  void removeAttachment(BuildContext context, int index) {
    context.read<EmailSendProvider>().attachments.removeAt(index);
  }
}
