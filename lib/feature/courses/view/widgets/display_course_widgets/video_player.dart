import 'package:flutter/material.dart';

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      
    );
  }
}