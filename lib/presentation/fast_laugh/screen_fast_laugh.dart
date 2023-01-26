import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widgets/video_tile.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(100, (index) {
        return VideoTile(
          index: index,
        );
      }),
    );
  }
}
