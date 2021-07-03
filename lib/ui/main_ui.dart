import 'package:flutter/material.dart';
import 'package:mepo/home_screens/components/categories/category_file.dart';

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
                            SizedBox(
                              height: 10,
                            ),
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
                              height: 30,
                            ),
                            Column(
                              //mepostars
                              children: [
                                Text(
                                  "data",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                ),
                                Text(
                                  "data",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Column(
                              //imbd
                              children: [
                                Text(
                                  "data",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                ),
                                Text(
                                  "data",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Column(
                              //rottent tomatoes
                              children: [
                                Text(
                                  "data",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                ),
                                Text(
                                  "data",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
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

              //watch on netflix or prime

              // Padding(
              //   padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         "Watch ON",
              //         style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //             shadows: [
              //               Shadow(
              //                   color: Colors.grey[300],
              //                   blurRadius: 5,
              //                   offset: Offset(1, 1))
              //             ]),
              //       ),
              //       SizedBox(
              //         width: 30,
              //       ),
              //       InkWell(
              //         child: Container(
              //           height: size.height * 0.06,
              //           //color: Colors.black,
              //           child: Image(
              //             //netflix link
              //             image: AssetImage(
              //                 "assets/images/others/Netflix logo.png"),
              //           ),
              //         ),
              //         onTap: () {
              //           print("Netflix link");
              //         },
              //       ),
              //       SizedBox(
              //         width: 30,
              //       ),
              //       InkWell(
              //         child: Container(
              //           height: size.height * 0.07,
              //           //color: Colors.black,
              //           child: Image(
              //             //Amazon prime link
              //             image: AssetImage(
              //                 "assets/images/others/Amazon prime logo.png"),
              //           ),
              //         ),
              //         onTap: () {
              //           print("Amazon prime link");
              //         },
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(70, 20, 70, 20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 5.0),
                      blurRadius: 6.0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Text("Watch For Free",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                        onPressed: () {
                          print("fetch free links");
                        },
                        child: Text("Get Links",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black))),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 5, 30, 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "The Croods: A New Age",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "\n" +
                                "Searching for a safer habitat, the prehistoric Crood family discovers an idyllic, walled-in paradise that meets all of its needs.",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, top: 10, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Watch ON",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          color: Colors.grey[300],
                                          blurRadius: 5,
                                          offset: Offset(1, 1))
                                    ]),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              InkWell(
                                child: Container(
                                  height: size.height * 0.06,
                                  //color: Colors.black,
                                  child: Image(
                                    //netflix link
                                    image: AssetImage(
                                        "assets/images/others/Netflix logo.png"),
                                  ),
                                ),
                                onTap: () {
                                  print("Netflix link");
                                },
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                child: Container(
                                  height: size.height * 0.07,
                                  //color: Colors.black,
                                  child: Image(
                                    //Amazon prime link
                                    image: AssetImage(
                                        "assets/images/others/Amazon prime logo.png"),
                                  ),
                                ),
                                onTap: () {
                                  print("Amazon prime link");
                                },
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Watch More",
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Animated(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
