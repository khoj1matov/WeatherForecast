import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  static final Uri _urlEmail = Uri(
    scheme: 'mailto',
    path: 'azamjonxojimatov6027@gmail.com',
    query: 'subject=Hello, my name is Azamjon, how can I help you?',
  );

  static final Uri _urlTelegram = Uri.parse("http://t.me/khoj1matov1");

  static Future<void> launchEmail() async {
    if (!await launchUrl(_urlEmail)) {
      throw Exception('Could not launch $_urlEmail');
    }
  }

  static Future<void> launchTelegran() async {
    if (!await launchUrl(_urlTelegram)) {
      throw Exception('Could not launch $_urlTelegram');
    }
  }
}
