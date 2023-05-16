import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/screens/detail_screen.dart';

class WebtoonCard extends StatelessWidget {
  final WebtoonModel webtoon;

  const WebtoonCard({
    super.key,
    required this.webtoon,
  });

  void _onTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(context),
      child: Column(
        children: [
          Container(
            width: 250,
            clipBehavior: Clip.hardEdge,
            decoration: _cardDecoration,
            child: Image.network(webtoon.thumb),
          ),
          const SizedBox(height: 10),
          Text(
            webtoon.title,
            style: _textStyle,
          ),
        ],
      ),
    );
  }

  final BoxDecoration _cardDecoration = const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    boxShadow: [
      BoxShadow(
        blurRadius: 15,
        offset: Offset(10, 10),
        color: Colors.black38,
      )
    ],
  );

  final TextStyle _textStyle = const TextStyle(
    fontSize: 22,
  );
}
