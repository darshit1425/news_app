import 'package:flutter/material.dart';
import 'package:news_app/screen/news/modal/news_modal.dart';
import 'package:news_app/utils/news_helper.dart';

class News_Provider extends ChangeNotifier {
  int? newsin = 0;
  NewsModel? NewsModaldata;
  String SelectedCountry = 'in';

  void Changecountry(String country) {
    SelectedCountry = country;
    notifyListeners();
  }

  ApiHelper countryHelper = ApiHelper();

  Future<NewsModel> getNews(String country) async {
    NewsModel NewsModal = await countryHelper.newsApi(country);
    NewsModaldata = NewsModal;
    return NewsModal;
  }

  void newsind(int ind) {
    newsin = ind;
    notifyListeners();
  }
}
