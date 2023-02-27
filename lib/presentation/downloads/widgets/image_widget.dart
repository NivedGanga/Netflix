import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {Key? key,
      required this.size,
      required this.imageLink,
      this.angle = 0,
      this.offsetDx = 0})
      : super(key: key);
  final Size size;
  final double offsetDx;
  final String imageLink;
  final double angle;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(offsetDx, 6),
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 57, 57, 57),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageLink),
              ),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
