import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';

class VideoTile extends StatelessWidget {
  final int index;
  const VideoTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(133, 0, 0, 0),
                radius: 30,
                child: IconButton(
                  icon: Icon(
                    Icons.volume_mute,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(image),
                  ),
                  _RightIconWidget(
                    icon: CupertinoIcons.smiley_fill,
                    title: 'LOL',
                  ),
                  _RightIconWidget(
                    icon: Icons.add,
                    title: 'My List',
                  ),
                  _RightIconWidget(
                    icon: Icons.share,
                    title: 'Share',
                  ),
                  _RightIconWidget(
                    icon: Icons.play_arrow,
                    title: 'Play',
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _RightIconWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const _RightIconWidget({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: Column(
        children: [
          Icon(
            icon,
            size: 28,
          ),
          Text(title),
        ],
      ),
    );
  }
}
