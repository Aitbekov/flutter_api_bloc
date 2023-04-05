import 'package:api_bloc/api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('API titles'), centerTitle: true,),
      body: BlocProvider(
        create: (_) => ApiBloc(httpClient: http.Client())..add(PostFetched()),
         child: const ApiPage(),
      ),
    );
  }
}
