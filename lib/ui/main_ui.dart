import 'package:flutter/material.dart';

class MainUi extends StatefulWidget {
  const MainUi({Key key}) : super(key: key);

  @override
  _MainUiState createState() => _MainUiState();
}

class _MainUiState extends State<MainUi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            SizedBox(
                              height: 50,
                            ),
                            Column(
                              //mepostars
                              children: [
                                Text(
                                  "data",
                                  style: TextStyle(fontSize: 25),
                                ),
                                Text(
                                  "data",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Column(
                              //imbd
                              children: [
                                Text(
                                  "data",
                                  style: TextStyle(fontSize: 25),
                                ),
                                Text(
                                  "data",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Column(
                              //rottent tomatoes
                              children: [
                                Text(
                                  "data",
                                  style: TextStyle(fontSize: 25),
                                ),
                                Text(
                                  "data",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: size.height * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 5.0),
                              blurRadius: 6.0,
                            )
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30)),
                          child: Image(
                            image: AssetImage(
                                "assets/images/movies/download2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Watch ON",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        height: size.height * 0.08,
                        //color: Colors.black,
                        child: Image(
                          //netflix link
                          image: AssetImage(
                              "assets/images/others/Netflix logo.png"),
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      child: Container(
                        height: size.height * 0.1,
                        //color: Colors.black,
                        child: Image(
                          //Amazon prime link
                          image: AssetImage(
                              "assets/images/others/Amazon prime logo.png"),
                        ),
                      ),
                      onTap: () {
                        print("Dummy Text");
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
