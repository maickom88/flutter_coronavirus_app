import 'package:corona_virus/pages/home_page/widgets/list_videos.dart';
import 'package:corona_virus/pages/second_page/second_page.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(160, 17, 0, 0),
                  Color.fromARGB(160, 9, 0, 0),
                  Color.fromARGB(120, 9, 0, 0),
                  Color.fromARGB(90, 9, 0, 0)
                ]),
          ),
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: MediaQuery.of(context).size.height * 0.0,
                left: MediaQuery.of(context).size.width / -1.5,
                child: Opacity(
                  opacity: 1,
                  child: Image(
                    image: AssetImage(
                      'assets/images/background_2.png',
                    ),
                    height: 400,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * -0.17,
                left: MediaQuery.of(context).size.width / 3.4,
                child: Opacity(
                  opacity: 0.7,
                  child: Image(
                    image: AssetImage('assets/images/corona.png'),
                    height: 500,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                      icon: Icon(Icons.sort, size: 36),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 12),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "SAIBA SOBRE",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 40,
                                fontFamily: 'Anton',
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                                shadows: [
                                  Shadow(
                                    blurRadius: 5,
                                    color: Colors.black45,
                                    offset: Offset(1.0, 1.0),
                                  )
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'O CORONA',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 40,
                                  fontFamily: 'Anton',
                                  fontWeight: FontWeight.w800,
                                  height: 1,
                                  letterSpacing: 1,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 5,
                                      color: Colors.black45,
                                      offset: Offset(1.0, 1.0),
                                    )
                                  ],
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'VIRUS!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5,
                                          color: Colors.black45,
                                          offset: Offset(1.0, 1.0),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, right: 130),
                              child: Text(
                                "Tenha acesso exclusivo a fotos, vídeos, notícias, mapa em tempo real e dicas!",
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.2,
                                  fontFamily: 'Roboto Slab',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              height: 46,
                              width: 140,
                              child: RaisedButton(
                                splashColor: Colors.red,
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side:
                                      BorderSide(color: Colors.red, width: 1.9),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SecondPage()));
                                },
                                child: Text(
                                  "INFORME-SE",
                                  style: TextStyle(
                                    letterSpacing: 1.4,
                                    fontSize: 18,
                                    fontFamily: 'Anton',
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30, right: 145),
                              child: Text(
                                "ÚLTIMAS NOTICIAS",
                                style: TextStyle(
                                  fontSize: 17,
                                  letterSpacing: 2,
                                  fontFamily: 'Anton',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey[700],
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.black,
                                      offset: Offset(1.0, 1.0),
                                    )
                                  ],
                                ),
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                                child: ListView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    ListVideos(
                                      title: 'NÃO É SOMENTE LAVAR!',
                                      image: 'assets/images/post1.jpg',
                                    ),
                                    ListVideos(
                                      title:
                                          'COMO EVITAR O CORONA VIRUS FORA DE CASA?',
                                      image: 'assets/images/post2.jpg',
                                    ),
                                    ListVideos(
                                      title: 'NÃO ENTRE EM PÂNICO. NÃO AGORA!',
                                      image: 'assets/images/post3.jpg',
                                    ),
                                    ListVideos(
                                      title: 'NOTÍCIA BOA!!',
                                      image: 'assets/images/post4.jpg',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30, right: 145),
                              child: Text(
                                "MAPA AO VIVO",
                                style: TextStyle(
                                  fontSize: 17,
                                  letterSpacing: 2,
                                  fontFamily: 'Anton',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 169,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          Container(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Opacity(
                                                opacity: 0.7,
                                                child: Image(
                                                  image: AssetImage(
                                                    'assets/images/map_corona.png',
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            height: 400,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5,
                                                    color: Colors.black,
                                                    offset: Offset(2.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey[800]),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Container(
                                              height: 30,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 10,
                                                      color: Colors.black,
                                                      offset: Offset(1.0, 1.0),
                                                    )
                                                  ]),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    child: ControlledAnimation(
                                                      playback: Playback.LOOP,
                                                      duration:
                                                          _animation.duration,
                                                      tween: _animation,
                                                      builder:
                                                          (context, animation) {
                                                        return Opacity(
                                                          opacity: animation[
                                                              'Opacity'],
                                                          child: Container(
                                                            width: 12,
                                                            height: 12,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors.red,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
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
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                                SizedBox(height: 30),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
