import 'package:flutter/material.dart';

class DogCard extends StatelessWidget {
  const DogCard({super.key, required this.imagePath, required this.title});

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Ink.image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
            child: InkWell(onTap: () {}),
          ),
          Positioned(
            bottom: 12,
            left: 12,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 4,
                    color: Colors.black,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
