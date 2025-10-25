import 'package:flutter/material.dart';

class ImageViewScreen extends StatelessWidget {
  final String imagePath;
  const ImageViewScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDE4ED),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDDE4ED),
        title: const Text(
          "Image Viewer",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Color(0xD33F51B5),
          ),
        ),
      ),
      body: Center(
        child: Hero(
          tag: imagePath,
          child: InteractiveViewer(
            panEnabled: true,
            minScale: 0.8,
            maxScale: 3.0,
            child: Image.asset(imagePath),
          ),
        ),
      ),
    );
  }
}
