import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:unicons/unicons.dart';

final Uri facebook_url = Uri.parse('https://www.facebook.com');
final Uri Instagram_url = Uri.parse('https://www.instagram.com');

Future<void> Facebook_function() async {
  if (!await launchUrl(facebook_url)) {
    throw 'Could not launch $facebook_url';
  }
}

Future<void> instagram_function() async {
  if (!await launchUrl(Instagram_url)) {
    throw 'Could not launch $Instagram_url';
  }
}

class urlclass extends StatelessWidget {
  urlclass(
      {required this.myfunction,
      required this.myPlatformIcon,
      required this.myPlatformSubTitle,
      required this.myPlatformTitle});
  String? myPlatformTitle;
  String? myPlatformSubTitle;
  IconData? myPlatformIcon;
  Function() myfunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Container(
          child: ListTile(
        leading: Icon(myPlatformIcon),
        subtitle: Text("$myPlatformSubTitle"),
        title: Text("$myPlatformTitle"),
      )),
    );
  }
}
