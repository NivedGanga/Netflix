
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.width * 1.2,
      child: Row(
        children: [
          SizedBox(
            width: 55,
            child: Column(
              children: [
                Text(
                  'FEB',
                  style: TextStyle(
                      color: kwhitecolor.withOpacity(0.6),
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0),
                ),
                Text(
                  '12',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5),
                ),
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: size.width - 55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width - 55,
                  height: size.width * 0.45,
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/w1920_and_h800_multi_faces/iHSwvRVsRyxpX7FE7GbviaDvgGZ.jpg')),
                ),
                kheight20,
                Row(
                  children: [
                    Text(
                      'WEDNESDAY',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1.5),
                    ),
                    Spacer(),
                    _IconText(
                        icondata: Icons.notifications_none_outlined,
                        text: 'Remind me'),
                    kwidth,
                    _IconText(
                        icondata: Icons.info_outline_rounded, text: 'info'),
                    kwidth,
                  ],
                ),
                kheight,
                Text('Coming on Friday'),
                kheight,
                Text('N film'),
                kheight,
                Text(
                  'WEDNESDAY',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0),
                ),
                kheight,
                Text(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availabl',
                  style: TextStyle(
                      fontSize: 13, color: kwhitecolor.withOpacity(0.6)),
                ),
                kheight20,
                kheight,
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _IconText extends StatelessWidget {
  final IconData icondata;
  final String text;
  const _IconText({
    Key? key,
    required this.icondata,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icondata),
        Text(
          text,
          style: TextStyle(fontSize: 13),
        )
      ],
    );
  }
}
