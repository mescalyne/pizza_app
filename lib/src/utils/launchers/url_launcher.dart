import 'package:url_launcher/url_launcher.dart';

class URLLauncher {

  static Future<bool> canLaunchUrl(String urlPath) async {
    if (await canLaunch(urlPath)) {
      return true;
    } else {
      return false;
    }
  }

  static void launchUrl(String urlPath) async {
    await launch(urlPath, forceSafariVC: false, forceWebView: false, );
  }

  static void launchEmail(String email) async {
    await launch(Uri(
        scheme: 'mailto',
        path: email).toString());
  }

  static void launchPhone(String phoneNumber) async {
    await launch(Uri(
        scheme: 'tel',
        path: phoneNumber).toString());
  }


}
