import 'dart:developer';
import 'dart:math';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/string.dart';
import 'package:netflix/domain/failure/main_failure.dart';
import 'package:netflix/main.dart';
import 'package:netflix/presentation/downloads/widgets/image_widget.dart';
import 'package:netflix/presentation/common_widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});
  final sections = [
    _SmartDownloads(),
    _SectionText(),
    _SectionImages(),
    _SectionButtons(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size(size.width, size.height * 0.04),
        child: AppbarWidget(title: 'Downloads'),
      ),
      body: SizedBox.expand(
        child: ListView.separated(
          itemBuilder: (context, index) => sections[index],
          separatorBuilder: (context, index) => kheight,
          itemCount: sections.length,
        ),
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: const [
          kwidth,
          Icon(Icons.settings),
          kwidth,
          Text(
            'Smart Downloads',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class _SectionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Introducing Downloads For You',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '''We'll download a personalised selection of \n movies and shows for you , so there's\n always something to wach on your\n device.''',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class _SectionImages extends StatelessWidget {
  @override
  StatelessElement createElement() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      BlocProvider.of<DownloadsBloc>(navigatorKey.currentContext!)
          .add(const DownloadsEvent.getDownloadsImageEvent());
    });
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<DownloadsBloc, DownloadsState>(
      builder: (context, state) {
        return SizedBox(
            height: size.width,
            width: size.width,
            child: state.isLoading ||
                    state.downloadFailureSuccessOption ==
                        Some(Left(MainFailure.clientFailure())) ||
                    state.downloadFailureSuccessOption ==
                        Some(Left(MainFailure.serverFailure()))
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            Color.fromARGB(255, 80, 80, 80).withOpacity(0.8),
                        radius: size.width * 0.34,
                      ),
                      DownloadsImageWidget(
                        imageLink:
                            '$imageBaseUrl${state.downlaodList[0].posterPath}',
                        angle: 18,
                        offsetDx: 85,
                        size: Size(
                            size.width * 0.28, size.width * 0.28 * 0.45 / 0.3),
                      ),
                      DownloadsImageWidget(
                        imageLink:
                            '$imageBaseUrl${state.downlaodList[5].posterPath}',
                        angle: -18,
                        offsetDx: -85,
                        size: Size(
                            size.width * 0.3, size.width * 0.3 * 0.45 / 0.3),
                      ),
                      DownloadsImageWidget(
                        imageLink:
                            '$imageBaseUrl${state.downlaodList[4].posterPath}',
                        size: Size(
                            size.width * 0.36, size.width * 0.36 * 0.45 / 0.3),
                      )
                    ],
                  ));
      },
    );
  }
}

class _SectionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: MaterialButton(
            color: kbuttonColorBlue,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Text(
              'Set Up',
              style: TextStyle(
                  color: kwhitecolor,
                  fontSize: 18,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        kheight,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: MaterialButton(
            color: kbuttonColorWhite,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {},
            child: const Text(
              'See What You Can Download',
              style: TextStyle(
                  letterSpacing: -0.5,
                  color: kblackColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w900),
            ),
          ),
        )
      ],
    );
  }
}
