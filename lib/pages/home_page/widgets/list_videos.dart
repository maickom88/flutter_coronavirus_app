import 'package:flutter/material.dart';

class ListVideos extends StatelessWidget {
  final String title;
  final String image;

  const ListVideos({Key key, this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 14, bottom: 14, left: 8.0, right: 6.0),
          child: Center(
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Opacity(
                  opacity: 0.5,
                  child: Image(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              width: 186,
              height: 166,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black54,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[800]),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 14, bottom: 14, left: 8.0, right: 6.0),
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 8, top: 100, left: 8, right: 10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Anton',
                      letterSpacing: 1,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            width: 180,
            height: 166,
          ),
        ),
        Container(
          width: 196,
          height: 166,
          child: Center(
              child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_circle_outline,
              size: 50,
            ),
          )),
        ),
      ],
    );
  }
}
