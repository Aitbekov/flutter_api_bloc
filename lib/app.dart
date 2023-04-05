import 'package:api_bloc/api/view/api_page.dart';
import 'package:flutter/material.dart';
import 'api/api.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostsPage(),
    );
  }
}
