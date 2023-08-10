import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const SongCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Column(
        children: [
          Image(
            image: image,
            width: 140,
            height: 140,
          ),
          Text(
            label,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
