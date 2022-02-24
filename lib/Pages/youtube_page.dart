import 'package:flutter/material.dart';

class YoutubePage extends StatefulWidget {
  const YoutubePage({Key? key}) : super(key: key);

  @override
  _YoutubePageState createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.red),
        child: const Text("Hello Youtube"));
  }
}
