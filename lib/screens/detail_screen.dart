import 'package:flutter/material.dart';
import 'package:toonflix/components/webtoon_app_bar.dart';
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:toonflix/services/api_service.dart';

class DetailScreen extends StatefulWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<WebtoonEpisodeModel>> episodes;

  @override
  void initState() {
    super.initState();
    webtoon = ApiService.getToonById(widget.id);
    episodes = ApiService.getLatestEpisodesById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: WebtoonAppBar(title: widget.title),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: widget.id,
                child: Container(
                  width: 250,
                  clipBehavior: Clip.hardEdge,
                  decoration: _heroDecoration,
                  child: Image.network(widget.thumb),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          FutureBuilder(
            future: webtoon,
            builder: _builder,
          )
        ],
      ),
    );
  }

  Widget _builder(
    BuildContext context,
    AsyncSnapshot<WebtoonDetailModel> snapshot,
  ) {
    if (snapshot.hasData) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              snapshot.data!.about,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 15),
            Text(
              '${snapshot.data!.genre} / ${snapshot.data!.age}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
    }
    return const Text("...");
  }

  final BoxDecoration _heroDecoration = const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    boxShadow: [
      BoxShadow(
        blurRadius: 15,
        offset: Offset(10, 10),
        color: Colors.black38,
      )
    ],
  );
}
