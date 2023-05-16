import 'package:flutter/material.dart';
import 'package:toonflix/components/webtoon_app_bar.dart';
import 'package:toonflix/widgets/webtoon_card.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: WebtoonAppBar(title: "오늘의 웹툰"),
      body: FutureBuilder(
        future: webtoons,
        builder: _builder,
      ),
    );
  }

  Widget _builder(
    BuildContext context,
    AsyncSnapshot<List<WebtoonModel>> snapshot,
  ) {
    if (snapshot.hasData) {
      // Return the list of webtoons
      return Column(
        children: [
          const SizedBox(height: 50),
          Expanded(child: _buildWebtoonList(snapshot))
        ],
      );
    }
    // Show a loading indicator while waiting for the webtoons
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  ListView _buildWebtoonList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return WebtoonCard(webtoon: webtoon);
      },
      separatorBuilder: (context, index) => const SizedBox(width: 40),
    );
  }
}
