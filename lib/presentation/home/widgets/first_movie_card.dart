import 'package:flutter/material.dart';

import 'package:netflix/core/colors/colors.dart';

class FirstMovieCard extends StatelessWidget {
  const FirstMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: size.width * 1.5,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5TYgKxYhnhRNNwqnRAKHkgfqi2G.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          height: size.width * 1.5,
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Color.fromARGB(0, 0, 0, 0),
                Color.fromARGB(0, 0, 0, 0),
                Colors.black,
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ButtonWithText(icon: Icons.add, text: 'My List'),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
                size: 28,
                color: kblackColor,
              ),
              label: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  'Play',
                  style: TextStyle(
                    fontSize: 16,
                    color: kblackColor,
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kwhitecolor),
              ),
            ),
            const ButtonWithText(icon: Icons.info_outline, text: 'Info')
          ],
        )
      ],
    );
  }
}

class ButtonWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  const ButtonWithText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
