import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkableIcon extends StatelessWidget {
  IconData icon;
  String link;

  LinkableIcon(this.icon, this.link);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: _launchURL,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }

  _launchURL() async {
    if (await canLaunch(this.link)) {
      await launch(this.link);
    } else {
      throw 'Could not launch $this.link';
    }
  }
}
