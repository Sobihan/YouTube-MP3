import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3/Pages/paste_page.dart';
import 'package:youtube_mp3/Pages/youtube_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<StatefulWidget> pages = [];
  int _selectPage = 0;

  void onTapHandler(int index) {
    setState(() {
      _selectPage = index;
    });
  }

  @override
  void initState() {
    pages = const [PastePage(), YoutubePage()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectPage],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.red,
        animationCurve: Curves.easeInOutBack,
        items: const [
          Icon(FontAwesomeIcons.paste),
          Icon(FontAwesomeIcons.youtube)
        ],
        onTap: (index) {
          onTapHandler(index);
        },
      ),
    );
  }
}
