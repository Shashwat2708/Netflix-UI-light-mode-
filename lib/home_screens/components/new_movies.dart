import 'package:flutter/material.dart';
import 'package:mepo/ui/main_ui.dart';

class new_movies extends StatelessWidget {
  const new_movies({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          New_Movie_Card(
            image: "assets/images/movies/The Croods A New Age.jpg",
            title: "The Croods: A New Age",
            press: () {
              print("Card Pressed");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainUi(),
                ),
              );
            },
          ),
          New_Movie_Card(
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
          New_Movie_Card(
            image: "assets/images/movies/Spiral The Book Of Saw.jpg",
            title: "Spiral: The Book Of Saw",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class New_Movie_Card extends StatelessWidget {
  const New_Movie_Card({
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
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.black.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text("$title",
                        overflow: TextOverflow.ellipsis,
                        //maxLines: 1,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
