import 'package:flutter/material.dart';

class WebtoonCard extends StatelessWidget {
  final String thumb;

  const WebtoonCard({super.key, required this.thumb});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
