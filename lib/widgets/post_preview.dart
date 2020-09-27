import 'package:blog/widgets/markdown_displayer.dart';
import 'package:blog/widgets/post_preview_title.dart';
import 'package:flutter/material.dart';

class PostPreview extends StatelessWidget {
  String title;
  String datePosted;
  String markDownFile;

  PostPreview(this.title, this.datePosted, this.markDownFile);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      elevation: 30,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          PostPreviewTitle(this.title, this.datePosted),
          MarkdownDisplayer(this.markDownFile),
          Text(
            'Continue Reading',
            style: TextStyle(
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
