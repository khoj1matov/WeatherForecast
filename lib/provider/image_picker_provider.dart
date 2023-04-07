import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:weatherforecast/provider/email_send_provider.dart';

class ImagePickerProvider extends ChangeNotifier {
  Future openImagePicker(BuildContext context, EmailSendProvider esp) async {
    final pick = await ImagePicker().getImage(source: ImageSource.gallery);
    if (pick != null) {
      esp.attachments.add(pick.path);
    }
    notifyListeners();
  }

  void removeAttachment(
    BuildContext context,
    EmailSendProvider esp,
    int index,
  ) {
    esp.attachments.removeAt(index);
    notifyListeners();
  }
}
