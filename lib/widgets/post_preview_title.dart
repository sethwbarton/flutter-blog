import 'package:flutter/material.dart';

class PostPreviewTitle extends StatelessWidget {
  String title;
  String datePosted;

  PostPreviewTitle(this.title, this.datePosted);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Text(
            this.title,
            style: TextStyle(
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w100,
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 40,
            color: Color(0xffcccccc),
          ),
          Text(
            this.datePosted,
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
