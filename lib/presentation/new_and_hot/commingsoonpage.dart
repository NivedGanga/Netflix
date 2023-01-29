import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/commingsoonwidget.dart';

class CommingSoonPage extends StatelessWidget {
  const CommingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          kheight,
          CommingSoonWidget(),
          kheight,
          CommingSoonWidget(),
          kheight,
          CommingSoonWidget(),
        ],
      ),
    );
  }
}
