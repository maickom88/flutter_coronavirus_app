import 'package:flutter/material.dart';

class ListProfile extends StatelessWidget {
  final String image;

  const ListProfile({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: <Widget>[
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.black54,
                  offset: Offset(1.0, 1.0),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Opacity(
                opacity: 1,
                child: Image(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
