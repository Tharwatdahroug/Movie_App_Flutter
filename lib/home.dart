import 'package:film/Movies.dart';
import 'package:film/horizontal.dart';
import 'package:film/virtcal.dart';
import 'package:flutter/material.dart';

import 'Rated.dart';

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Homepadge();
  }
}

class Homepadge extends State<home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Cinema Live"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Recommended',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('View All'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movieList.length,
                  itemBuilder: (ctx, i) => horizpade(i),
                
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Best of 2019',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('View All'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                  itemCount:bestMovieList.length,
                  itemBuilder: (ctx,i)=>virtcalpade(i),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Top Rated Movies',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('View All'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movieList.length,
                  itemBuilder: (ctx, i) => Rated(i),
                 
                ),
              ),
            ],
          ),
        ));
  }
}
