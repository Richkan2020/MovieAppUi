import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/carouselwidget.dart';
import 'package:movieapp/categorybox.dart';
import 'package:movieapp/pages/avengers4.dart';
import 'package:movieapp/pages/primetimepage.dart';

import 'freakypage.dart';
import 'jokerpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000f33),
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        toolbarHeight: 45,
        title: Text(
          "MoveApp",
          style: TextStyle(color: Colors.red),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              child: Icon(Icons.search_sharp, color: Colors.red),
              onTap: () {
                print("Search Button");
              },
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            child: Icon(Icons.menu_outlined, color: Colors.red),
            onTap: () {
              print("Menu Button");
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CarouselWidget(), //Carousel Widget
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                print("Action selected");
                              },
                              child: CategoryBox(
                                CategoryName: "Action",
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                print("Comedy Selected");
                              },
                              child: CategoryBox(
                                CategoryName: "Comedy",
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                print("Drama Selected");
                              },
                              child: CategoryBox(
                                CategoryName: "Drama",
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                print("Horror Selected");
                              },
                              child: CategoryBox(
                                CategoryName: "Horror",
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                print("Family Selected");
                              },
                              child: CategoryBox(
                                CategoryName: "Family",
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                print("Thriller Selected");
                              },
                              child: CategoryBox(
                                CategoryName: "Thriller",
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                print("Romance Selected");
                              },
                              child: CategoryBox(
                                CategoryName: "Romance",
                              )),
                        ],
                      ),
                    ),
                  ), //CategoryBox
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Best Movies',
                              style: TextStyle(
                                  color: Color(0xffdbdbdb), fontSize: 22),
                            ),
                            GestureDetector(
                                child: Icon(
                              Icons.chevron_right,
                              color: Colors.red,
                              size: 30,
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                   child: Container(
                                    height: 200,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/joker.jpg',
                                        ),
                                      ),
                                    ),
                                  ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => JokerPage()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Joker",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Color(0xffdbdbdb),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                    ],
                                  ),
                                ],
                              ), //Joker
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 200,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/freakyposter.jpg',
                                          ),
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => FreakyPage()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Freaky",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Color(0xffdbdbdb),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                    ],
                                  ),
                                ],
                              ), //Freaky//
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 200,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/primetimeposter.jpg',
                                          ),
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => PrimeTimePage()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "PrimeTime",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Color(0xffdbdbdb),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                    ],
                                  ),
                                ],
                              ), //PrimeTime
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 200,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/avengers4.jpg',
                                          ),
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => AvengersPage()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Avengers4",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Color(0xffdbdbdb),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                    ],
                                  ),
                                ],
                              ), //Avengers4
                            ],
                          ),
                        ),
                      ),//film covers
                    ],
                  ), //BestMovies
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
