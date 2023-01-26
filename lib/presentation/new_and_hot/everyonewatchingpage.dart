import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/fast_laugh/widgets/video_tile.dart';

class EveryonesWatchingPage extends StatelessWidget {
  const EveryonesWatchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5),
      children: [
        kheight,
        EveryoneWatchingWidget(),
        kheight,
        EveryoneWatchingWidget(),
        kheight,
        EveryoneWatchingWidget(),
      ],
    );
  }
}

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width,
            height: size.width * 0.45,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w1920_and_h800_multi_faces/iHSwvRVsRyxpX7FE7GbviaDvgGZ.jpg'),
            ),
          ),
          kheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'LOST \n IN \n PEACE',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                child: Row(
                  children: [
                    _IconWithText(icon: CupertinoIcons.share, title: 'Share'),
                    kwidth,
                    _IconWithText(icon: CupertinoIcons.add, title: 'My List'),
                    kwidth,
                    _IconWithText(
                        icon: CupertinoIcons.play_fill, title: 'Play'),
                    kwidth
                  ],
                ),
              )
            ],
          ),
          kheight,
          Text(
            'LOST IN SPACE',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: 0),
          ),
          kheight,
          Text(
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availabl',
            style: TextStyle(fontSize: 13, color: kwhitecolor.withOpacity(0.6)),
          ),
          kheight20,
          kheight20,
        ],
      ),
    );
  }
}

class _IconWithText extends StatelessWidget {
  const _IconWithText({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
