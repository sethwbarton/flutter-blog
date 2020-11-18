import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownDisplayer extends StatelessWidget {
  String fileName;
  MarkdownDisplayer(this.fileName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 300,
      child: FutureBuilder(
          future: rootBundle.loadString("web/assets/posts/" + this.fileName),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Markdown(
                data: snapshot.data,
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
