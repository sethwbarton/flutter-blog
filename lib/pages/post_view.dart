import 'package:flutter/material.dart';

import '../widgets/Footer.dart';
import '../widgets/action_button.dart';
import '../widgets/markdown_displayer.dart';
import '../util/size_config.dart';
import '../pages/landing_page.dart';

class PostView extends StatelessWidget {
  String markDownFile;

  PostView(this.markDownFile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1c1c1c),
        leading: ActionButton('SWB', LandingPage()),
        actions: [
          ActionButton('HOME', LandingPage()),
          ActionButton('ABOUT ME', PostView('about_me.md')),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: MarkdownDisplayer(this.markDownFile),
            ),
          ],
        ),
      ),
    );
  }
}
