import 'package:app_movie/modules/movie_detail/widget/movie_detail_content/movie_detail_content.dart';
import 'package:app_movie/modules/movie_detail/widget/movie_detail_header.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './movie_detail_controller.dart';

class MovieDetailPage extends GetView<MovieDetailController> {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MovieDetailHeader(
                movie: controller.movie.value,
              ),
              MovieDetailContent(
                movie: controller.movie.value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
