import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:animations/HomeTopTab.dart';

void main() => runApp(MaterialApp(
  home:MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  Tween<double> _scaleTween = Tween<double>(begin: 1,end: 2);
  ColorTween _color2 = ColorTween(begin: Colors.blue, end: Colors.red);
  double _width = 200;
  double _height = 200;
  dynamic _color = Colors.lightBlue;
  int _currentIndex = 0;
  dynamic _colors = Colors.grey[700];

  double _updateState(){
    setState(() {
      _width = 400;
      _height = 400;
      _color = Colors.deepPurple;
    });
  }
  double _updateState2(){
    setState(() {
      _width = 200;
      _height = 200;
      _color = Colors.indigo;
    });
  }
  final tabs = [
    Column(//Games Tab
      children: <Widget>[
        DefaultTabController(
          length: 6,
          child: Container(
            height: 70,
            width: 380,
            child: TabBar(
              isScrollable: true,
              tabs: [
//                    Tab(
//                      child: ClipRRect(
//                        borderRadius: BorderRadius.circular(8.0),
//                        child: Image(
//                          fit: BoxFit.fill,
//                          image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg',),
//                        ),
//                      ),
//                    ),
                Tab(
                  child: Image.asset(
                    'assets/CandyCrushIcon.png',
                    height: 100,
                    width: 70,
                    fit: BoxFit.fill
                  ),
                ),
                Tab(
                  child: Image.asset(
                      'assets/CandyCrushIcon.png',
                      height: 100,
                      width: 70,
                      fit: BoxFit.fill
                  ),
                ),
                Tab(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                          'assets/CandyCrushIcon.png',
                          height: 70,
                          width: 70,
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                          'assets/CandyCrushIcon.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                          'assets/CandyCrushIcon.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                          'assets/CandyCrushIcon.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
          width: 370,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  'Based on your recent activity',
                  style: TextStyle(fontSize: 20)),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  PreferredSize(
                    preferredSize: new Size(380,100),
                    child: Container(
                      width: 380,
                      height: 70,
                      child: TabBar(
                        isScrollable: true,
                        tabs: <Widget>[
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(
                                  image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(
                                  image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  PreferredSize(
                    preferredSize: new Size(380,100),
                    child: Container(
                      width: 380,
                      height: 70,
                      child: TabBar(
                        isScrollable: true,
                        tabs: <Widget>[
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(
                                  image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(
                                  image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  PreferredSize(
                    preferredSize: new Size(380,100),
                    child: Container(
                      width: 380,
                      height: 70,
                      child: TabBar(
                        isScrollable: true,
                        tabs: <Widget>[
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(
                                  image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(
                                  image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  PreferredSize(
                    preferredSize: new Size(380,100),
                    child: Container(
                      width: 380,
                      height: 70,
                      child: TabBar(
                        isScrollable: true,
                        tabs: <Widget>[
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(
                                  image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(
                                  image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
    DefaultTabController(
      length: 6,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              PreferredSize(
                preferredSize: new Size(380,100),
                child: Container(
                  width: 380,
                  height: 70,
                  child: TabBar(
                    isScrollable: true,
                    tabs: <Widget>[
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(
                              image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(
                              image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ),
    DefaultTabController(
      length: 6,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              PreferredSize(
                preferredSize: new Size(380,100),
                child: Container(
                  width: 380,
                  height: 70,
                  child: TabBar(
                    isScrollable: true,
                    tabs: <Widget>[
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(
                              image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(
                              image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ),
    DefaultTabController(
      length: 6,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              PreferredSize(
                preferredSize: new Size(380,100),
                child: Container(
                  width: 380,
                  height: 70,
                  child: TabBar(
                    isScrollable: true,
                    tabs: <Widget>[
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(
                              image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(
                              image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/c9/1d/6b/c91d6b20-33ec-a963-78e2-88b01cf606a5/source/1000x1000bb.jpg'),fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Padding(
                padding: EdgeInsets.only(top: 2.0),
                child: _GooglePlayAppBar(),
              ),
                bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                labelColor: Colors.lightGreen[900],
                isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 6.0,
                  tabs: <Widget>[
                    Tab(
                      child: Container(
                    child: Text(
                      'For you',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                )
                    ),
                    Tab(
                        child: Container(
                          child: Text(
                            'Top charts',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        )
                    ),
                    Tab(
                        child: Container(
                          child: Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        )
                    ),
                    Tab(
                        child: Container(
                          child: Text(
                            "Editors' choice",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        )
                    ),
                    Tab(
                        child: Container(
                          child: Text(
                            'FREE',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        )
                    ),
                  ],
            ),
            ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            showUnselectedLabels: true,
            unselectedFontSize: 15,
            selectedFontSize: 15,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.videogame_asset, color: _colors,),
                  title: Text('Game',style: TextStyle(color: _colors),),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps, color: _colors,),
                  title: Text('Apps',style: TextStyle(color: _colors),),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_movies, color: _colors,),
                  title: Text('Moves & TV',style: TextStyle(color: _colors),),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark, color: _colors,),
                  title: Text('Books',style: TextStyle(color: _colors),),
              ),
            ],
            onTap: (index){
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          body: tabs[_currentIndex]
//        body: TabBarView(
//          children: <Widget>[
//              homeTopTabs(Colors.pink)
//          ],
//        ),
        ),
    );
  }
}

Widget _GooglePlayAppBar(){
  return Container(
    decoration: const BoxDecoration(
      border: Border(
        top: BorderSide(width: 0.5, color: Colors.grey),
        left: BorderSide(width: 0.5, color: Colors.grey),
        right: BorderSide(width: 0.5, color: Colors.grey),
        bottom: BorderSide(width: 0.5, color: Colors.grey),
      ),
      borderRadius: BorderRadius.all(Radius.circular(8.0),),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: IconButton(
            color: Colors.grey[700],
            icon: Icon(Icons.menu),
            onPressed: (){},
          )
        ),
        Container(
          child: Text(
            'Google Play',
            style: TextStyle(
              color: Colors.grey[400]
            ),
          ),
        ),
        Container(
          child: IconButton(
            color: Colors.grey[700],
            icon: Icon(Icons.mic),
            onPressed: (){},
          )
        )
      ],
    ),
  );
}


//TweenAnimation
//child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: <Widget>[
//                RaisedButton(
//                  onPressed: (){
//                    _updateState();
//                  },
//                  onLongPress: (){
//                    _updateState2();
//                    },
//                  child: Text('ANIMATE')
//                ),
//                SizedBox(
//                  height: 100,
//                  width: 100,
//                ),
//                TweenAnimationBuilder(
//                  curve: Curves.bounceOut,
//                  tween: _scaleTween,
//                  duration: Duration(milliseconds: 900),
//                  builder: (context, scale, child){
//                    return Transform.scale(scale: scale/2, child: child,);
//                  },
//                  child:Container(
//                    width: _width,
//                    height: _height,
//                    color: _color,
//                    child: Center(
//                      child: Text(
//                        'Animation',
//                        style: Theme.of(context).textTheme.headline,
//                      ),
//                    ),
//                  ),
//                ),

//Navigationbar





//child: Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              RaisedButton(
//                  onPressed: (){
//                    _updateState();
//                  },
//                  onLongPress: () {
//                    _updateState2();
//                  },
//                  child: Text('ANIMATE')
//              ),
//              AnimatedContainer(
//                duration: Duration(milliseconds: 900),
//                curve: Curves.bounceOut,
//                width: _width,
//                height: _height,
//                color: _color,
//                child: Center(
//                  child: Text(
//                    'Animation',
//                    style: Theme.of(context).textTheme.headline,
//                  ),
//                ),
//              ),
//            ],
//          ),