import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_store.dart';
import 'widgets/home_header/home_header.dart';
import 'widgets/knowledge_list/knowledge_list.dart';
import 'widgets/list_videos/list_videos.dart';
import 'widgets/playlist_books/playlist_books.dart';
import 'widgets/playlist_videos/playlist_videos.dart';
import 'widgets/where_you_stop_list/where_you_stop_list.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          HomeHeader(),
          WhereYouStopList(),
          SizedBox(height: 15),
          ListVideos(),
          SizedBox(height: 15),
          PlaylistVideos(),
          SizedBox(height: 15),
          PlaylistBooks(),
          SizedBox(height: 15),
          KnowledgeList(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
