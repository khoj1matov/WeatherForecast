import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/provider/email_send_provider.dart';
import 'package:weatherforecast/provider/image_picker_provider.dart';

class SupportImagesWidget {
  static ChangeNotifierProvider img(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ImagePickerProvider(),
      child: Consumer<ImagePickerProvider>(
        builder: (context, esp, child) => Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: context.h * 0.375,
            width: context.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: context.read<EmailSendProvider>().attachments.length,
              itemBuilder: (ctx, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: context.h * 0.3,
                  width: context.w * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.file(
                    File(context.read<EmailSendProvider>().attachments[index]),
                    // fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
 /* Wrap(
      children: <Widget>[
        for (var i = 0; i < esp.attachments.length; i++)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                flex: 0,
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 100,
                  child: Image.file(
                    File(esp.attachments[i]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.remove_circle),
                onPressed: () => {
                  Provider.of<ImagePickerProvider>(
                    context,
                    listen: false,
                  ).removeAttachment(context, esp, i),
                },
              )
            ],
          ),
      ],
    );*/