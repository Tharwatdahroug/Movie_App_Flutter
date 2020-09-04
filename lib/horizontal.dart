import 'package:film/Movies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:film/Movie.dart';

class horizpade extends StatelessWidget {
  final int index;
  horizpade(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('Movie', arguments: {
            'id': movieList[index].id,
            'title': movieList[index].title,
            'imageUrl': movieList[index].imageUrl,
            'description': movieList[index].description,
            'rating': movieList[index].rating,
            'year': movieList[index].year,
            'duration': movieList[index].duration,
          });
        },
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
                      movieList[index].imageUrl,
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
              movieList[index].title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
