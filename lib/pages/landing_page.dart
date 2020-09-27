import 'package:flutter/material.dart';
import '../util/size_config.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xff1c1c1c),
              height: SizeConfig.blockSizeVertical * 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: FlatButton(
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
                  ),
                  Expanded(flex: 3, child: SizedBox()),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'HOME',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w100,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'ABOUT ME',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w100,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 10,
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
