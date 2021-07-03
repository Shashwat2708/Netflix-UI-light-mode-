import 'package:flutter/material.dart';

class Animated extends StatelessWidget {
  const Animated({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          AnimatedCard(
            image: "assets/images/movies/The Croods A New Age.jpg",
            title: "The Croods: A New Age",
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => (),
              //   ),
              // );
            },
          ),
          AnimatedCard(
            image: "assets/images/movies/Wrath Of Man.jpg",
            title: "Wrath Of Man",
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => (),
              //   ),
              // );
            },
          ),
          AnimatedCard(
            image: "assets/images/movies/Spiral The Book Of Saw.jpg",
            title: "Spiral: The Book Of Saw",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class AnimatedCard extends StatelessWidget {
  const AnimatedCard({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 50,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: press,
            child: Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
