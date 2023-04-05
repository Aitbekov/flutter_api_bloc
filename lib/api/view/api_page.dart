import 'package:api_bloc/api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  const ApiPage({Key? key}) : super(key: key);

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiBloc, ApiState>(builder: (context, state) {
      return ListView.builder(
          itemCount: state.post.length,
          itemBuilder: (context, index) {
            final id = state.post[index].id;
            final title = state.post[index].title;
            final body = state.post[index].body;

            return ListTile(
              leading: Text(id.toString()),
              title: Text(title.toString()),
            );
          });
    });
  }
}

