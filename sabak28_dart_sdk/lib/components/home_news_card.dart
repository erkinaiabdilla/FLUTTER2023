import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sabak28_dart_sdk/constants/api_const.dart';
import 'package:sabak28_dart_sdk/model/article.dart';
import 'package:sabak28_dart_sdk/theme/app_colors.dart';
import 'package:sabak28_dart_sdk/theme/sized.dart';
import 'package:sabak28_dart_sdk/view/detail_view.dart';

class CardNews extends StatelessWidget {
  const CardNews({
    super.key,
    required this.news,
  });

  final Article news;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailView(article: news),
          ),
        );
      },
      child: Card(
        color: AppColors.cardColors,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: CachedNetworkImage(
                imageUrl: news.urlToImage ?? ApiConst.newsImage,
                placeholder: (context, url) =>
                    Image.asset('assets/waitImages.jpg'),
                errorWidget: (context, url, error) =>
                    Image.asset('assets/errorImage.jpg'),
              ),
            ),
            Sized.width5,
            Expanded(
              flex: 5,
              child: Text(news.title),
            ),
          ],
        ),
      ),
    );
  }
}
