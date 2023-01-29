import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/common_widgets/app_bar_widget.dart';
import 'package:netflix/presentation/new_and_hot/commingsoonpage.dart';
import 'package:netflix/presentation/new_and_hot/everyonewatchingpage.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 90),
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: Text('New & Hot',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                )),
            actions: [
              const Icon(Icons.cast),
              kwidth,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 25,
                  width: 25,
                  color: const Color.fromARGB(255, 90, 95, 234),
                ),
              ),
              kwidth
            ],
            bottom: TabBar(
              isScrollable: true,
              labelColor: kblackColor,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              unselectedLabelColor: kwhitecolor,
              indicator: BoxDecoration(
                color: kwhitecolor,
                borderRadius: bradius30,
              ),
              tabs: [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: '''👀 Everyone's Watching''',
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              CommingSoonPage(),
              EveryonesWatchingPage(),
            ],
          ),
        ),
      ),
    );
  }
}
