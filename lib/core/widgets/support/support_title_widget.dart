import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/widgets/widget_to_back_widget.dart';
import 'package:weatherforecast/provider/email_send_provider.dart';
import 'package:weatherforecast/provider/image_picker_provider.dart';

class SupportTitleWidget {
  static Expanded title(BuildContext context, EmailSendProvider esp) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ToBackWidget.back(context),
          Text(
            "Support",
            style: TextStyle(
              color: ColorConst.kPrimaryWhite,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () {
              Provider.of<ImagePickerProvider>(
                context,
                listen: false,
              ).openImagePicker(context, esp);
            },
            iconSize: 40,
            color: ColorConst.kPrimaryWhite,
            icon: Icon(Icons.attachment_outlined),
          ),
        ],
      ),
    );
  }
}
