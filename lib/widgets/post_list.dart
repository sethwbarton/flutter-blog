import 'package:blog/widgets/post_preview.dart';
import 'package:flutter/material.dart';

class PostList extends StatefulWidget {
  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  List<Widget> _posts = [
    PostPreview('About Me', 'September 26, 2020', 'about_me.md'),
    PostPreview('Test Post', 'September 26, 2020', 'simple_post.md'),
  ];
  final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: PageView.builder(
            controller: _controller,
            itemCount: _posts.length,
            itemBuilder: (BuildContext context, int index) {
              return _posts[index % _posts.length];
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Icon(Icons.arrow_back),
                  onPressed: () {
                    _controller.previousPage(
                        duration: _kDuration, curve: _kCurve);
                  },
                ),
                FlatButton(
                  child: Icon(Icons.arrow_forward),
                  onPressed: () {
                    _controller.nextPage(duration: _kDuration, curve: _kCurve);
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
