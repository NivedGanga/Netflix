import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';

class AppbarWidget extends StatelessWidget {
  final String title;
 const AppbarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          kwidth,
          Text(title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              )),
          const Spacer(),
          const Icon(Icons.cast),
          kwidth,
          Container(
            height: 25,
            width: 25,
            color: const Color.fromARGB(255, 90, 95, 234),
          ),
          kwidth,
        ],
      ),
    );
  }
}
