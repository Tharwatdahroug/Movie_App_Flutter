import 'package:film/Movies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Rated extends StatelessWidget {
 final int index;
Rated(this.index);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.of(context).pushNamed('Movie', arguments: {
            'id': topRatedMovieList[index].id,
            'title': topRatedMovieList[index].title,
            'imageUrl': topRatedMovieList[index].imageUrl,
            'description':topRatedMovieList[index].description,
            'rating': topRatedMovieList[index].rating,
            'year': topRatedMovieList[index].year,
            'duration': topRatedMovieList[index].duration,
          });
        },
   child: Container(
      width: 160,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Card(
            elevation: 10,
            child: Container(
              height: 200,
              // width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage(
                    topRatedMovieList[index].imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            topRatedMovieList[index].title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    );}
}
