import 'package:flutter/material.dart';
import 'package:news_app/screen/news/provider/news_provider.dart';
import 'package:news_app/screen/news/view/news_view.dart';
import 'package:news_app/screen/tab_bar/view/tab_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => News_Provider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '1',
        routes: {
          '/': (context) => Tab_screen(),
          '1': (context) => India(),
          // '2': (context) => Chat(),
          // '1': (context) => Call(),
          // '3': (context) => Setting(),
        },
      ),
    ),
  );
}
