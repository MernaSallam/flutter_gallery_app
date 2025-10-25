import 'package:flutter/material.dart';

import 'package:gallery_app/Screens/imgScreen.dart';
//import 'image_view_screen.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  final List<String> images = const [
    'assets/img1.jpg',
    'assets/img2.jpg',
    'assets/img3.jpg',
    'assets/img4.jpg',
    'assets/img5.jpg',
    'assets/img6.jpg',
    'assets/img7.jpg',
    'assets/img8.jpg',
    'assets/img9.jpg',
    'assets/img10.jpg',
    'assets/img11.jpg',
    'assets/img12.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDE4ED),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDDE4ED),
        title: const Text(
          "Gallery",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.indigo,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //Number of columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ImageViewScreen(imagePath: images[index]),
                  ),
                );
              },
              child: Hero(
                tag: images[index],
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(images[index], fit: BoxFit.cover),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
