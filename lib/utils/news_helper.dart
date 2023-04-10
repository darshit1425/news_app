import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/screen/news/modal/news_modal.dart';



class ApiHelper {


  Future<NewsModel> newsApi(String Country) async {

    String Link =
        "https://newsapi.org/v2/top-headlines?country=$Country&category=business&apiKey=bcfeac9eecf94892a27c0415c2c4da9d";

    Uri uri = Uri.parse(Link);
    var resource = await http.get(uri);

    var Json = jsonDecode(resource.body);


    NewsModel newsModel = NewsModel.fromJson(Json);

    return newsModel;

    //
  }
}
