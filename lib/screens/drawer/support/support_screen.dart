import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/widgets/search/search_borders_widget.dart';
import 'package:weatherforecast/core/widgets/widget_container_background.dart';
import 'package:weatherforecast/provider/email_send_provider.dart';

class SupportScreen extends StatefulWidget {
  SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerBackgroundWidget.container(
        context: context,
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              height: 499,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller:
                        context.watch<EmailSendProvider>().subjectController,
                    style: TextStyle(color: ColorConst.kPrimaryWhite),
                    cursorColor: ColorConst.kPrimaryWhite,
                    cursorWidth: 2.5,
                    decoration: InputDecoration(
                      suffixIconColor: ColorConst.kPrimaryWhite,
                      labelText: "Subject",
                      labelStyle: TextStyle(color: ColorConst.kPrimaryWhite),
                      // border: SearchBordersWidget.borders(
                      //   color: ColorConst.kPrimaryWhite,
                      // ),
                      enabledBorder: SearchBordersWidget.borders(
                        color: ColorConst.kPrimaryWhite,
                      ),
                      focusedBorder: SearchBordersWidget.borders(
                        color: ColorConst.kPrimaryWhite,
                      ),
                      // focusedErrorBorder: SearchBordersWidget.borders(
                      //   color: ColorConst.kPrimaryRed,
                      // ),
                      // disabledBorder: SearchBordersWidget.borders(
                      //   color: ColorConst.kPrimaryRed,
                      // ),
                    ),
                  ),
                  // Wrap(
                  //   children: <Widget>[
                  //     for (var i = 0; i < attachments.length; i++)
                  //       Row(
                  //         mainAxisSize: MainAxisSize.min,
                  //         children: <Widget>[
                  //           Expanded(
                  //               flex: 0,
                  //               child: Container(
                  //                 margin: EdgeInsets.all(10),
                  //                 width: 100,
                  //                 height: 100,
                  //                 child: Image.file(File(attachments[i]),
                  //                     fit: BoxFit.cover),
                  //               )),
                  //           IconButton(
                  //             icon: Icon(Icons.remove_circle),
                  //             onPressed: () => {_removeAttachment(i)},
                  //           )
                  //         ],
                  //       ),
                  //     Align(
                  //       alignment: Alignment.centerRight,
                  //       child: IconButton(
                  //         icon: Icon(Icons.attach_file),
                  //         onPressed: _openImagePicker,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  TextButton(
                    onPressed: () {
                      context.watch<EmailSendProvider>().send(context);
                    },
                    child: Text("send"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
