import 'package:blog/util/size_config.dart';
import 'package:blog/widgets/markdown_displayer.dart';
import 'package:blog/widgets/post_preview_title.dart';
import 'package:flutter/material.dart';

import "../pages/post_view.dart";

class PostPreview extends StatelessWidget {
  String title;
  String datePosted;
  String markDownFile;

  PostPreview(this.title, this.datePosted, this.markDownFile);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: PostPreviewTitle(this.title, this.datePosted),
          ),
          Expanded(
            child: MarkdownDisplayer(this.markDownFile),
          ),
          Center(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PostView(this.markDownFile)));
              },
              child: Text(
                'Continue Reading',
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
