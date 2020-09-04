import 'package:film/Movies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class virtcalpade extends StatelessWidget {
  final int index;
  virtcalpade(this.index);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('Movie', arguments: {
          'id': bestMovieList[index].id,
          'title': bestMovieList[index].title,
          'imageUrl': bestMovieList[index].imageUrl,
          'description':bestMovieList[index].description,
          'rating': bestMovieList[index].rating,
          'year': bestMovieList[index].year,
          'duration': bestMovieList[index].duration,
        });
      },
      child: Column(
        children: <Widget>[
          Card(
            elevation: 5,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      //  bottomRight: Radius.circular(5)
                      topLeft: Radius.circular(5),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        bestMovieList[index].imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        bestMovieList[index].title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 160,
                        child: Text(
                          bestMovieList[index].description,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
