class ApiConst {
  static const apiKey = '7e06724d0c964bdfb278e4c44124e072';
  static String topNews([String? domain]) =>
      'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';

  static const newsImage =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/BBC_News_2022_%28Alt%29.svg/1200px-BBC_News_2022_%28Alt%29.svg.png';
}
