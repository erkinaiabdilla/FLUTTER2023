import 'package:flutter/material.dart';
import 'package:sabak28_dart_sdk/components/home_news_card.dart';
import 'package:sabak28_dart_sdk/model/domain_countries.dart';
import 'package:sabak28_dart_sdk/model/top_news.dart';
import 'package:sabak28_dart_sdk/servises/fetch_servise.dart';
import 'package:sabak28_dart_sdk/theme/app_colors.dart';
import 'package:sabak28_dart_sdk/theme/app_text.dart';
import 'package:sabak28_dart_sdk/theme/app_text_styles.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  Future<void> fetchNews([String? domain]) async {
    topNews = null;
    setState(() {});
    topNews = await TopNewsRepo().fetchTopNews(domain);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColors,
        title: const Text(
          AppTexs.agr,
          style: AppTextStyles.agrStyle,
        ),
        actions: [
          PopupMenuButton<Country>(
            onSelected: (Country item) async {
              await fetchNews(item.domain);
            },
            itemBuilder: (BuildContext context) {
              return countriesSet
                  .map(
                    (e) => PopupMenuItem<Country>(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList();
            },
          ),
        ],
      ),
      body: topNews == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: topNews!.article.length,
              itemBuilder: (context, index) {
                final news = topNews!.article[index];
                return CardNews(news: news);
              },
            ),
    );
  }
}
