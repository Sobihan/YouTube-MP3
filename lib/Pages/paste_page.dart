import 'package:flutter/material.dart';

class PastePage extends StatefulWidget {
  const PastePage({Key? key}) : super(key: key);

  @override
  _PastePageState createState() => _PastePageState();
}

class _PastePageState extends State<PastePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.red),
      child: const Center(child: Text("Hello Paste Page")),
    );
  }
}
