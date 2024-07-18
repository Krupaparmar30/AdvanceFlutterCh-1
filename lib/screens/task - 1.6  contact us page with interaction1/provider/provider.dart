import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class  contactProvider extends ChangeNotifier{
  void launchWebsite()
  {
Uri uri=Uri.parse("https://web.whatsapp.com/");
launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void launchPhone()
  {
    Uri uri=Uri(scheme: "tel",path: "+91 1234567890");
    launchUrl(uri);
  }
  void launchMail()
  {
    Uri uri=Uri.parse("mailto:5646krupaparmar@gmail.com");
    launchUrl(uri);
  }
  void launchBe()
  {
    Uri uri=Uri.parse("https://www.instagram.com/accounts/login/?hl=en");
    launchUrl(uri);
  }
}