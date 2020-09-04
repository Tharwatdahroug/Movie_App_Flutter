import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

import 'login.dart';

class movie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Moviepadge();
  }
}

class Moviepadge extends State<movie> {
  double rating = 1;
  int starCount = 10;
  @override
  Widget build(BuildContext context) {
    final routa =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routa["id"];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      backgroundColor: Colors.white,
        title: Text("Movie"),
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                elevation: 5,
                child: Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        routa['imageUrl'],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              routa['title'],
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.timer,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          routa['duration'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          routa['year'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          routa['rating'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              routa['description'],
              style: TextStyle(
                fontSize: 10,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new StarRating(
                  size: 25.0,
                  rating: rating,
                  color: Colors.orange,
                  borderColor: Colors.grey,
                  starCount: starCount,
                  onRatingChanged: (rating) => setState(
                    () {
                      this.rating = rating;
                    },
                  ),
                ),
                new Text(
                  "$rating",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.play_circle_filled,
                  ),
                  Text(
                    "Watch Trailer",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: RaisedButton(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              onPressed: () {Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>Login()));
                              },
              color: Colors.yellowAccent,
              textColor: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Container(height:20 ,width: 20,),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle_outline,
                  ),
                  Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
