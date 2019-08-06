import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      HomePageOne() /*, HomePageTwo(), HomePageThree()*/
    ]));
  }
}

class HomePageOne extends StatefulWidget {
  @override
  _HomePageOneState createState() => _HomePageOneState();
}

class _HomePageOneState extends State<HomePageOne> {
  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 414.0;
    double defaultScreenHeight = 896.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Column(children: <Widget>[
      SizedBox(
        height: 45,
      ),
      Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            iconSize: 25.0,
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        children: <Widget>[
          SizedBox(
            width: 70,
          ),
          Text(
            'Location',
            style: TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          SizedBox(
            width: 70,
          ),
          Text(
            'Nærøfjord Norway',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // Spacer(),
          SizedBox(
            width: 50,
          ),
          Container(
            height: 35,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: Icon(Icons.near_me),
                iconSize: 20.0,
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: 25,
      ),
      Row(children: <Widget>[
        SizedBox(
          width: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 70.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/DemoAppHeadshotOne.jpg'),
            radius: 20,
          ),
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 23,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: 220,
              height: 110,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Jess Graham',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '1 min',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'Which parks would you recommend to see in Nærøfjord? Closer to the hotel, please.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
      SizedBox(height: 15,),
      Row(
        children: <Widget>[
          SizedBox(
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/DemoAppHeadshotTwo.jpg'),
              radius: 20,
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 23,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 220,
                height: 110,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Fred Potter',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '1 min',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Which parks would you recommend to see in Nærøfjord? Closer to the hotel, please.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      )
    ]);
  }
}
