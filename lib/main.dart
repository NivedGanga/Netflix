import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/core/di/injuctable.dart';
import 'package:netflix/presentation/main_page/screen_mainmenu.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureinjuction();
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadsBloc>(),
        ),
         BlocProvider(
          create: (context) => getIt<SearchBloc>(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: kblackColor,
            scaffoldBackgroundColor: backgroundcolor,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            iconTheme: const IconThemeData(color: Colors.white)),
        home: ScreenMainmenu(),
      ),
    );
  }
}
