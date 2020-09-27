import 'package:flutter/material.dart';

import '../util/size_config.dart';
import '../util/custom_icons_icons.dart';
import "../widgets/linkable_icon.dart";

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.blockSizeVertical * 5,
      color: Color(0xff1c1c1c),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              '\u00a9 ' + new DateTime.now().year.toString() + ' Seth Barton',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                LinkableIcon(
                    CustomIcons.github, 'https://github.com/sethwbarton'),
                LinkableIcon(CustomIcons.linkedin,
                    'https://www.linkedin.com/in/seth-barton-828787156/'),
              ],
            ),
          ),
          SizedBox(
            width: SizeConfig.blockSizeHorizontal * 15,
          )
        ],
      ),
    );
  }
}
