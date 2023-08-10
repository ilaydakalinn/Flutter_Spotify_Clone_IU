import 'package:flutter/cupertino.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;

  const AlbumCard({
    required this.image,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          height: 140,
          width: 140,
        ),
        SizedBox(
          height: 10,
        ),
        Text(label)
      ],
    );
  }
}
