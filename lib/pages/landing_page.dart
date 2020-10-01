import 'package:flutter/material.dart';

import '../util/size_config.dart';
import '../widgets/footer.dart';
import '../widgets/action_button.dart';
import '../widgets/post_list.dart';
import '../pages/post_view.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('seth_logo.png'),
              ),
            ),
            Container(
              width: SizeConfig.blockSizeHorizontal * 60,
              height: SizeConfig.blockSizeVertical * 45,
              child: Image.asset('1984-Macintosh.png'),
            ),
            Container(
              width: SizeConfig.blockSizeHorizontal * 80,
              height: SizeConfig.blockSizeVertical * 80,
              child: PostList(),
            )
          ],
        ),
      ),
    );
  }
}
