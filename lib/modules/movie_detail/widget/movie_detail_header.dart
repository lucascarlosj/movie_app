import 'package:app_movie/models/moviel_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetailHeader extends StatelessWidget {
  final MovieDetailModel? movie;

  const MovieDetailHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movieData = movie;
    if (movieData != null) {
      return SizedBox(
        //height: Get.height,
        child: Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black54,
                Colors.black26,
                Colors.black12,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0, 0.2, 0.8, 1],
            ),
          ),
          height: 300,
          width: Get.width,
          child: Image.network(
            movie!.urlImages[0].toString(),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
