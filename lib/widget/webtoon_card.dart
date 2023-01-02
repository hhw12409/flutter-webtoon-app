import 'package:flutter/material.dart';

class WebtoonCard extends StatelessWidget {
  final String thumb, id;

  const WebtoonCard({
    super.key,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: id,
      child: Container(
        width: 250,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(7, 7),
              color: Colors.black.withOpacity(0.5),
            )
          ],
        ),
        child: Image.network(
          thumb,
        ),
      ),
    );
  }
}
