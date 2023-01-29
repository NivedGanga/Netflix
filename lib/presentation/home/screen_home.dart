import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/first_movie_card.dart';
import 'package:netflix/presentation/home/widgets/movie_list.dart';
import 'package:netflix/presentation/home/widgets/numbered_movie_list.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  ValueNotifier<bool> scrollnotifier = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        log(notification.direction.toString());
        if (notification.direction == ScrollDirection.reverse) {
          scrollnotifier.value = false;
          scrollnotifier.notifyListeners();
        } else if (notification.direction == ScrollDirection.forward) {
          scrollnotifier.value = true;
          scrollnotifier.notifyListeners();
        }
        return true;
      },
      child: Stack(
        children: [
          SingleChildScrollView(
            
            child: Column(
              children: [
                const FirstMovieCard(),
                const MovieListView(title: 'New Releases'),
                const MovieListView(title: 'Now Trending hi hello'),
                kheight20,
                NumberedMovieList(),
                const MovieListView(title: 'Malayalam Movies'),
              ],
            ),
          ),
          ValueListenableBuilder(
            valueListenable: scrollnotifier,
            builder: (context, value, child) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: const Color.fromARGB(111, 0, 0, 0),
                    child: _StaticAppBar(),
                  ),
                  scrollnotifier.value == true
                      ? Container(
                          width: double.infinity,
                          height: 35,
                          color: const Color.fromARGB(111, 0, 0, 0),
                          child: const _HidingAppBar(),
                        )
                      : SizedBox(),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}

class _StaticAppBar extends StatelessWidget {
  const _StaticAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        CircleAvatar(
          radius: 27,
          backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Netflix-new-icon.png/512px-Netflix-new-icon.png'),
        ),
        kwidth,
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
    );
  }
}

class _HidingAppBar extends StatelessWidget {
  const _HidingAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'TV Shows',
            style: TextStyle(
              color: kwhitecolor,
              fontSize: 16,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Movies',
            style: TextStyle(
              color: kwhitecolor,
              fontSize: 16,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Categories',
            style: TextStyle(
              color: kwhitecolor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
