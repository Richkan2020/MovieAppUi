import 'package:flutter/material.dart';

import 'homepage.dart';

class PrimeTimePage extends StatefulWidget {
  @override
  _PrimeTimePageState createState() => _PrimeTimePageState();
}

class _PrimeTimePageState extends State<PrimeTimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        toolbarHeight: 45,
        title: Text(
          'PrimeTime',
          style: TextStyle(color: Colors.red),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              child: Icon(
                Icons.add,
                color: Colors.red,
                size: 28,
              ),
              onTap: () {
                print("Add Button");
              },
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.red,
              size: 24,
            ),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 280,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/primeTime.jpg',
                  ),
                ),
              ),
            ),
            Container(
              height: 610,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Color(0xff000f33)
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'PrimeTime',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Drama,Thriller',
                      style: TextStyle(
                        color: Color(0xffdbdbdb),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 25,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          size: 25,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          size: 25,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          size: 25,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          size: 25,
                          color: Colors.yellowAccent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Year',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Country',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Time',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2021',
                          style: TextStyle(
                            color: Color(0xffdbdbdb),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Poland',
                          style: TextStyle(
                            color: Color(0xffdbdbdb),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '1h.33m',
                          style: TextStyle(
                            color: Color(0xffdbdbdb),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      color: Colors.red,
                      width: 500,
                      height: 1,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "On New Year's Eve 1999, an armed man enters a TV studio during a broadcast, takes the host hostage and makes one demand: to give a message live on air.",
                      style: TextStyle(
                        fontFamily: 'Alata',
                        color: Color(0xffdbdbdb),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      color: Colors.red,
                      width: 250,
                      height: 1,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),color: Colors.red,),

                      width: 160,
                      height: 70,
                      child: Center(child:  Text(
                        'Watch Now',
                        style: TextStyle(
                          color: Color(0xffdbdbdb),
                          fontSize: 20,
                        ),
                      ),),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
