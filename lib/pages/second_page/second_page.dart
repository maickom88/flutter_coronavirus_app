import 'package:corona_virus/pages/second_page/widgets/list_mapa_br.dart';
import 'package:corona_virus/pages/second_page/widgets/list_profile.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  MultiTrackTween _animation;
  @override
  void initState() {
    super.initState();
    _animation = MultiTrackTween([
      Track("Opacity").add(Duration(seconds: 1), Tween(begin: 0, end: 1),
          curve: Curves.bounceOut)
    ]);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2.2,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      Image(
                        image:
                            AssetImage('assets/images/video_ilustration.png'),
                      ),
                      Center(
                          child: Icon(
                        Icons.play_circle_outline,
                        size: 80,
                      )),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 50),
                          child: Container(
                            width: 200,
                            child: Text(
                              "Ao vivo Dr Paulo fala para a população!",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: 'Anton',
                                  letterSpacing: 0.6,
                                  height: 1.2),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 10),
                          child: Container(
                            height: 30,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.black,
                                    offset: Offset(1.0, 1.0),
                                  )
                                ]),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: ControlledAnimation(
                                    playback: Playback.LOOP,
                                    duration: _animation.duration,
                                    tween: _animation,
                                    builder: (context, animation) {
                                      return Opacity(
                                        opacity: animation['Opacity'],
                                        child: Container(
                                          width: 12,
                                          height: 12,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Text(
                                  "AO VIVO",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                    fontFamily: 'Anton',
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      ListProfile(
                        image: 'assets/images/profile1.jpg',
                      ),
                      ListProfile(
                        image: 'assets/images/profile2.jpg',
                      ),
                      ListProfile(
                        image: 'assets/images/profile3.jpg',
                      ),
                      Text(
                        "29+",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'Anton',
                          letterSpacing: 2,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ultrices, erat aliquet interdum malesuada, lacus lectus fermentum nibh, non maximus purus ex nec libero.',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Roboto Slab',
                        letterSpacing: 1,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "NOTÍCIAS SOBRE",
                      style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 2,
                        fontFamily: 'Anton',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ListMapaBr(
                          image: 'assets/images/bandeira_pe.jpg',
                        ),
                        ListMapaBr(
                          image: 'assets/images/bandeira_ce.png',
                        ),
                        ListMapaBr(
                          image: 'assets/images/bandeira_ba.png',
                        ),
                        ListMapaBr(
                          image: 'assets/images/bandeira_sp.png',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(140),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black54,
                                      offset: Offset(1.0, 1.0),
                                    )
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Ver Mais",
                                    style: TextStyle(
                                      fontSize: 17,
                                      letterSpacing: 2,
                                      fontFamily: 'Anton',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
