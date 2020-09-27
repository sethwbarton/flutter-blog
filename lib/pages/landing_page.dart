import 'package:flutter/material.dart';
import '../util/size_config.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c1c1c),
        leading: FlatButton(
          onPressed: () {},
          child: Text(
            'SWB',
            style: TextStyle(
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w100,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text(
              'HOME',
              style: TextStyle(
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w100,
                  color: Colors.white),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'ABOUT ME',
              style: TextStyle(
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w100,
                  color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffffffff),
      body: Column(
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
          Expanded(
            flex: 10,
            child: Image.asset('1984-Macintosh.png'),
          ),
        ],
      ),
    );
  }
}
