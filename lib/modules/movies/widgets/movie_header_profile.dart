import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieHeaderProfile extends StatelessWidget {
  const MovieHeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 45,
        child: Container(
          width: Get.width,
          height: 45,
          color: Colors.red,
        ),
      ),
    );
  }
}
