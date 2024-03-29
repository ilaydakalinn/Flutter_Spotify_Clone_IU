import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowAlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const RowAlbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 55,
              width: 55,
            ),
            SizedBox(
              width: 8,
            ),
            Text(label)
          ],
        ),
      ),
    );
  }
}
